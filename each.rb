array = [1, 2, 3, 3, 1]

array.each do |el|
  print " #{el} "
end

# => prints 1  2  3  3  1
# => returns original array!

arrayPlusOne = []
array.each do |el|
  arrayPlusOne << el + 1
end

# => returns original array! WTF?
# but wait... if we call arrayPlusOne...

arrayPlusOne
# => [2, 3, 4, 4, 2]

# #each will ALWAYS return the origina array. If you want to return something
# else, you can wrap it in a function...

def returnSomethingElse(array)
  newArrayPlusOne = []
  array.each do |el|
    newArrayPlusOne << el + 1
  end
  newArrayPlusOne
end

# don't forget to call the function...
returnSomethingElse(array)
# => [2, 3, 4, 4, 2]

# here's some examples of each in the wild (taken from our Rails project):
# a table that generates data dynamically
<<-HTML
<tbody>
  <% @neighborhoods.each do |neighborhood| %>
  <tr>
    <td style="text-align:center"><%= link_to neighborhood.id, neighborhood %></td>
    <td><%= link_to neighborhood.name, neighborhood %></td>
    <td><%= neighborhood.get_average_score.round(2)  %></td>
  </tr>
  <% end %>
</tbody>
HTML

# assigning ActiveRecord associations
counter = 0
Restaurant.all.each do |r|
  neighborhood_zips.each do |n, zips|
    if zips.include?(r.zip_code)
      r.neighborhood_id = (Neighborhood.find_by name: n).id
      r.save
      next
    end
  end
  counter += 1
  print "\r #{counter}"
end

# You can also iterate over other collections such as hashes with #each
newHash = {0=>1, 1=>2, 2=>3, 3=>3, 4=>1}

# total of all keys plus all values:
total = 0
newHash.each do |key, value|
  total += (key + value)
end
# returns original hash, like normal
total
# => 20
