puts "Hello, tell my your name!"
name = gets.chomp
name.capitalize!

puts "Hello #{name}, it's nice to meet you!"

puts "So, #{name}, how old are you?"
age = gets.chomp.to_i
#  I orginally had the to_i in the string interpolation below for each age
#  above is much cleaner and clearer

puts "Wow, so in 10 years you will be #{age + 10}!"
puts "In 20 years you will be #{age + 20}!"
puts "In 30 years you will be #{age + 30}!"
puts "In 40 years you will be #{age + 40}!"
puts "In 50 years you will be #{age + 50}! Now that's getting really old!"
