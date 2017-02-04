# write a program that iterates over an array and builds a new array
# that is the result of incrementing each value in the original array by 2

arr1 = [1, 2, 3, 4, 5]  # create the first array
arr2 = []  # create a empty 2nd array

arr1.each do |i|  # iterate over array 1
  arr2 << (i + 2)  # increment each i in arr1 by 2 and add it to arr2
end

puts "#{arr1}"
puts "#{arr2}"
