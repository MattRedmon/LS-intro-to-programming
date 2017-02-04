# what is the value of arr after each of the two programs given

arr = ["b", "a"]
arr = arr.product(Array(1..3))
puts "#{Array(1..3)}"
puts "#{arr}"
arr.first.delete(arr.first.last)
puts "#{arr}"
puts
# in line 4, Array(1..3) creates a new array => [1,2,3]
# then line 47 is equivolent to => ["b", "a"].product([1,2,3])
# result of line 4 is 6 new arrays => ["b", 1], ["b",2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]
# the product method multiplies each element in on array to each element in the second array

# in line 6 the code deletes the 1 from the array ["b", 1] leaving ["b"]
# the second element of the first array is deleted
# ???? I'm unsure how this code does this ???
# the program returns "1", which is what code in line 7 removed


arr = ["b", "a"]
arr = arr.product([Array(1..3)])
puts "#{([Array(1..3)])}"
puts "#{arr}"
arr.first.delete(arr.first.last)
puts "#{arr}"

# in line 20 a nested array is created => [[1,2,3]] because of the [], which is the diff from the first programs
# so the result of line 20 is ["b", [1,2,3]], ["a", [1,2,3]]
# the result of line 23 is ["b"], ["a", [1,2,3]]
# the second element of the first array is deleted.
# the program returns [1,2,3], which is what the code in line 25 removed
