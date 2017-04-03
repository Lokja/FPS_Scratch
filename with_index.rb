array = [1, 2, 3, 3, 1]

# #map and #each have a handy enumerator #with_index that can be tagged on to
# grab the index of the value:
array.each.with_index do |el, i|
  puts "The value #{el} is at position #{i}"
end
# prints
# The value 1 is at position 0
# The value 2 is at position 1
# The value 3 is at position 2
# The value 3 is at position 3
# The value 1 is at position 4
# then returns
# => [1, 2, 3, 3, 1]

# lets build a hash with key value pairs corresponding to index and element
newHash = {}
array.each.with_index do |el, i|
  newHash[i] = el
end
# returns the original array, but if we call newHash
newHash
# => {0=>1, 1=>2, 2=>3, 3=>3, 4=>1}

# maybe we want an array of hashes?
array.map.with_index do |el, i|
  {i => el}
end
# => [{0=>1}, {1=>2}, {2=>3}, {3=>3}, {4=>1}]
