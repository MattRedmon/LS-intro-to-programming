# use the each method of Array to iterate over given array and print out each value

arr = [1,2,3,4,5,6,7,8,9,10]
x = 0

arr.each do |num|
  puts "The number at index #{x} is #{num}"
  x += 1
end
