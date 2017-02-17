# exercise #6 - get rid of duplicates 

arr = [1,2,3,4,5,6,7,8,9,10]

arr << 11  # add 11 to end of array
puts "#{arr}"

arr.unshift 0  # adds 0 to beginning of array
puts "#{arr}"

arr.pop  # removes 11 from end of array

arr << 3  # adds 3 to end of array
puts "#{arr}"

arr.uniq!  # with the ! the original array will be modified
puts "#{arr}"
