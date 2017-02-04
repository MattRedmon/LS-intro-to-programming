
array1 = [1, "Bob", 4.33, "another string"]
puts array1.first
puts array1.last
puts array1[1]
puts array1[2]
puts array1[3]
puts
# modifying arrays
puts array1.pop  # pop method "pops off" the last element in the array that it is called on
                 # pop method mutates the caller, it permanently changes array1
                 # the return value of the pop method is the array element that was "popped"
puts
puts array1

puts

array1.push("another string")  # we can use the push method to put the string back into
                               # the array in the last postion
                               # push mutates the caller as well, changing the array
array1 << "a 2nd string"  # the shovel operator "<<" does the same thing as push, also mutating the caller
puts array1

# the map method iterates over an array applying a block to each element and returns
# a new array with the results

a = [1, 2, 3, 4]
puts a.map { |num| num**2 } # map does not mutate the caller, original array is not changed with map
puts a
puts
puts a.collect { |num| num**2 }  # appears "collect" method has same fucntion as "map" just shorter to type
puts a

a = ["bird", "cat", "dog", "hamster", "snake"]
puts a.delete_at(4) # "delete_at" deletes at the index specified, mutates caller
puts
puts a
puts
puts a.delete("hamster") # permanently deletes all instances of the provided value
puts
puts a

b = [1, 1, 1, 2, 2, 3, 3, 3, 4, 5, 5, 5]
puts b.uniq # iterates through array, deletes dups, returns NEW array, does not mutate caller
puts
puts b
puts
puts b.uniq! # addition of "!" performs uniq method destructively, does mutate the caller
puts
puts b # uniq! with bang operator does mutate the caller

# iterating over an array
num = [1, 2, 3, 4, 5, 6, 7, 8, 9,10]
puts num.select { |num| num > 4 } select method does not mutate the caller

def mutate(arr)
  arr.pop
end

def not_mutate(arr)
  arr.select { |i| i > 3 }
end

a = [1, 2, 3, 4, 5, 6]

puts mutate(a) # pops off last val in array, mutates the caller
puts not_mutate(a) # selects 4 + 5 (but not 6 since it was popped off with mutate() method), does not mutate
puts a  # outputs => 1,2,3,4,5

# nested arrays
teams = [["Joe", "Steve"], ["Frank", "Molly"], ["Dan", "Sara"]]
puts teams[1]

a = [1,2,3]
b = [2,3,4]

puts a == b
b.pop # removes last element in array b
b.unshift(1) # adds # 1 to first postion in array b, or index 0
puts a == b

a = [1, 2, 3]
puts "It's as as as #{a}"

a = [1, 2, 3, 4, 5]
puts a.include?(3)
puts a.include?(6)

b = [1, 2, [3, 4, 5], [6, 7]]
puts "Flattened: #{b.flatten}"  # flatten is not destructive, the Original array is not permanently changed
puts "Original array after flatten: #{b}"

a = [1, 2, 3, 4, 5]
a.each_index { |i| puts "This is array value #{a[i]} at index #{i}" }
# each_index method iterates through the array like the each method however the variable
# represents the index number as opposed to the value at each index so
# |i| variable represents the index # of the array not the variable in the array

a = [1, 2, 3, 4, 5]
a.each_with_index { |val, index| puts "#{index + 1}: #{val}"}
# each_with_index gives ability to manipulate both the value and the index by passing
# in two parameters to the block of code, the first is the value from the array
# and the second is the index

a = [5, 3, 8, 4, 1]
puts "array a sorted: #{a.sort}"  # sort is not destructive, does not mutate the caller
puts "And the original array: #{a}"

puts "the product of two arrays: #{[1,2,3].product([4,5])}"
# this looks like a linear algebra algorithm

# each method works on objects that allow iteration, commonly used along with a block
# each runs the code in the block once for each element in the collection and
# and returns the collection it was invoked on
# if no block is given it returns the enumerator
a = [1, 2, 3]
a.each { |e| puts e }
puts "#{a}"
puts
a.each { |e| puts e + 2 }
puts "#{a}"
puts
puts a.each

# map also works on objs that allow iteration
# like each, when given a block it invokes the given block once for each element in the collection
# it differs from each in the returned value.
# map creates and returns a new array containing the values returned by the block
a = [1,2,3]
b = a.map { |x| x**2 } # map creates a new array, the original remains unchanged
puts "result of map: #{b}"
puts "origianl array after map: #{a}"

 a = [1, 2, 3]
 b = a.map { |x| puts x**2 }  # the return value of this code => [nil, nil,nil]
 puts "#{b}" # it creates a new array but the return value of "puts" is nil
             # so each iteration through the elements returns nil because of the puts stmt
# " because puts returns nil every time the block is invoked, nil is returned which
#  makes up the values in the newly created returned array"
#  *** use each for iteration and map for transformation ***
