# code for chapter on loops and iterators
=begin
i = 0
loop do
  i += 1
  puts i
  break
end

i = 0
loop do
  i += 2
  puts i
  if i == 10
    break  # this will cause execution to exit the loop
  end
end

i = 0
loop do
  i += 2
  if i == 4 # when execution gets to this line if i is 4 then
    next    # "next" will exit the loop, we will never get to the code
  end       # that print the i when i is 4.  output is 2,6,8,10, skipping the 4
  puts i
  if i == 10 # when i gets to 10 the loop is exited
    break
  end
end

x = gets.chomp.to_i
while x > 0
  puts x
  x -= 1
end
puts "Done!"

x = gets.chomp.to_i
until x < 0  # until loop is opposite of while loop
  puts x
  x -= 1
end
puts "Done!"

# a do/while loop is similar to a while loop except the code inside the loop
# get executed 1 time prior to the conditional check.  in a regular while loop
# there is no gaurantee code in loop will execute since the conditional is
# checked before loop code is executed
loop do
  puts "Do you want to do that again?"
  answer = gets.chomp
  if answer != "Y" # we check the conditional here after the code has ran once
    break
  end
end

#  for loops loop over a finite number of elements
x = gets.chomp.to_i
for i in 1..x do
  puts i
end
puts "Done!"
# while loops return "nil"
# for loops return the collection of elements after it executes

x = [1, 2, 3, 4, 5]
for i in x do
  puts i
end
puts "Done!"

x = 0
while x <= 10
  if x.odd?
    puts x
  end
  x += 1
end

x = 0
while x <= 10  # the while loop by itself counts up to 10
  if x == 3  #  the if conditional checks for two things
    x += 1   #  first is x = 3? if not it skips to elsif
    next # when x is 3 we increment the counter and skip to next iteration of while loop, x in not printed even though it's odd
  elsif x.odd?  # this checks if even or odd. if odd prints x
    puts x
  end
  x += 1 # the while loop by itself counts up to 10
end

x = 0
while x <= 10
  if x == 7
    break # the break forces us to exit the while loop so output is 1,3,5
  elsif x.odd?  # with the break stmt we never make it to 7 or later in the while loop to print
    puts x
  end
  x += 1
end

names = ["Bob", "Joe", "Steve", "Janice", "Susan", "Helen"]
names.each { |name| puts name }
names.each { |name| puts name.length }
names.each { |name| puts name.downcase.reverse }
names.each { |name| puts name.upcase }
# the each method loops through each name in our array
# the code within the {} block is executed on each loop
# each time we iterate ove the array we assign the value of the element to the varialbe
# name that is in the pipes. following that is the logic we want to use to
# operate on the variable. First we simply print name, then we get array element
# length, then reverse the variable, lastly upcasing the variable

names = ["Bob", "Joe", "Steve", "Janice", "Susan", "Helen"]
x = 1
names.each do |name|    # do/end block replaces {} curly braces here
  puts "#{x}. #{name}"  # {} used when code can be written on one line
  x += 1
end

# RECURSION
def doubler(start)
  puts start
  if start < 20
    doubler(start * 2)
  end
end
doubler(2)  # => 2,4,8,16,32
puts
doubler(3)  # => 3,6,12,24
puts
doubler(4)  # => 4,8,16,32,
puts
doubler(5)  # => 5,10,20
=end

# fibonacci
def fibonacci(number)
  if number < 2
    number
  else
    (fibonacci(number - 1) + fibonacci(number - 2))
  end
end

puts fibonacci(6)
puts fibonacci(5)
puts fibonacci(4)
puts fibonacci(3)
