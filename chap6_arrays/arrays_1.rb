# given and array and a number write a program that checks to see if the number
# appears in the array1

arr = [1, 3, 5, 7, 9, 11]
number = 3

arr.each do |a|  # this iterates through each value in the array
  if a == number  # this compares the value from the array "a" to the # we want to know if in array
    puts "#{number} is in the array" # when the condition of the if stmt is true (a == number)
  end                                # then the puts stmt is ran telling us "3" is in the array
end


# a provided solution:

if arr.include?(number)  # the include? method checks the array "arr" to see if number is in it
  puts "#{number} is in the array"  # since number is 3 which is in the array the puts stmt will be ran
end
