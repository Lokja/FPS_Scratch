array = [1, 2, 3, 3, 1]

# select simply returns any values that match the conditions of the block in
# an array. This is opposed to #find which only returns the first value found
# that meets the conditions

array.select do |el|
  el > 1
end
# => [2, 3, 3]

#select can also be used with the bang operator to manipulate the original array
array.select! do |el|
  el > 1
end
# => [2, 3, 3]
array
# => [2, 3, 3]

# again, be careful! <-- just an exclamation point this time
array.select! do |el|
  el > 5
end
# => []
array
# => []
# you just deleted the contents of your array!
# (you can do that with the #clear method) in one step

# You can also iterate over other collections such as hashes with #each
newHash = {0=>1, 1=>2, 2=>3, 3=>3, 4=>1}

newHash.select do |key, value|
  key > 2 && value < 2
end
# => {4=>1}
# note this returns the key-value pairs matching all conditions

newHash.select do |key, value|
  key.even? && value.odd?
end
# {0=>1, 2=>3, 4=>1}
