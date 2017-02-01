# Use each_with_index method to iterate through an array that prints index and value of array

fruit_array = ["apple", "banana", "cherry", "kiwi", "orange", "pear"]

# first pass using curly brackets {}
fruit_array.each_with_index { |fruit, index| puts "index: #{index} for fruit: #{fruit}" }

puts
puts

# second pass usind do/end block
fruit_array.each_with_index do |fruit, index|
  puts "index: #{index} for fruit: #{fruit}"
end
 puts
 puts

# revision of code based on provided answer
# this version counts from 1 rather than 0
fruit_array.each_with_index do |fruit, index|
  puts "index #{index + 1} for fruit: #{fruit}"
end

# for each_with_index with "|val, index|" within pipes, the first value "fruit" is from
# the array while second value "index" gives position in the array.
