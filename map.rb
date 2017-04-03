array = [1, 2, 3, 3, 1]

# or just use #map :)
array.map do |el|
  el*el
end
# => [1, 4, 9, 9, 1] yay squares!
# let's make sure that the original array is intact:
array
# [1, 2, 3, 3, 1]

# what if we want to update the original array?
# use #map! the exclamation point (bang operator) is actually doing something
# IT'S THE EXTREME VERSION OF MAP!!!!!
array.map! do |el|
  el*el*el*el
end
# => [1, 16, 81, 81, 1]
# el to the FOURTH POWER! EXTREME!

# let's make sure array is properly updated:
array
# => [1, 16, 81, 81, 1]

# be careful with #map! (again, that's a bang). you will overwrite your original
# data, never to access it again.

# the method #collect does the same exact thing as #map. Always use #map.
