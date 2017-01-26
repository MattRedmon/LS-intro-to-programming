# method that takes string and upcases is length > 10

=begin
puts "Please enter a string"
your_string = gets.chomp

if (your_string.length > 10)
  puts your_string.upcase
else
  puts your_string
end
=end
# first attempt was not a method
# below refactor

def allcaps(string)
  if string.length > 10
    puts string.upcase  # solution does not use puts here but down below as part
  else                  # of the method call -->  puts allcaps("hello world")
    puts string         # I think i like this version better, saves writing puts so many times
  end
end

allcaps("hello world")
allcaps("hey there")
allcaps("how's it going?")
