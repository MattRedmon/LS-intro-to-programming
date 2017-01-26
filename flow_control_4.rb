# what does the following code print to the screen

# problem 1
"4" == 4 ? puts("TRUE") : puts("FALSE")   # prints "FALSE"


# problem 2
x = 2
if ((x * 3)/2) == (4 + 4 - x - 3)   # prints "Did you get it right?"
  puts "Did you get it right?"
else
  puts "Did you?"
end


# problem 3   # prints "Alright now!"
y = 9
x = 10
if (x + 1) <= (y)
  puts "Alright."
elsif (x + 1) >= (y)
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW!"
else
  puts "Alrighty!"
end
