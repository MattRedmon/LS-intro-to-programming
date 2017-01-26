# get # between 1 + 100 from user and report on what group falls into

puts "Please enter a number from 0 to 100"
num = gets.chomp.to_i  # have to use .to_i to convert from string to integer
                       # remember gets --> 'get string'
if num >= 0 && num <= 50
  puts "your number is between 0 and 50"
elsif num >= 50 && num <= 100
  puts "your number is between 51 and 100"
else
  puts "your number is greater than 100"
end
# my original code failed to account for negative numbers
# when given a neg number it stays my number is greater than 100

# provided solution

puts "Please enter a number between 0 and 100."
number = gets.chomp.to_i

if number < 0
  puts "You can't enter negative numbers!"
elsif number <= 50
  puts "#{number} is between 0 and 50"
elsif number <= 100
  puts "#{number} is between 50 and 100"
else
  puts "#{number} is greater than 100"
end
