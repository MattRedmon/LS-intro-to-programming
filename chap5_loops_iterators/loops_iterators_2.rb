# write a while loop that takes input from the user, performs and action
# and only stops when the user types "STOP"
# I have changed "STOP" to "NO"

answer = ""

while answer != "NO" do
  puts "please type in a number you would like to square"
  num = gets.chomp.to_i
  squared = (num * num).to_s
  puts "#{num} squared is " + squared
  puts "Would you like to do another? YES/NO"
  answer = gets.chomp
end
