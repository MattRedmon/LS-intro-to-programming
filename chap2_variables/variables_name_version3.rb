puts "Hello, what is your first name?"
first_name = gets.chomp.capitalize!
puts "And your last?"
last_name = gets.chomp.capitalize!


puts "Hello #{first_name} #{last_name}, it's nice to meet you!"


#  below two ways to do the block

10.times { puts first_name + " " + last_name }
