puts "Hello, tell my your name!"
name = gets.chomp
name.capitalize!

10.times { puts "Hello #{name}, it's nice to meet you!" }


#  below two ways to do the block

10.times { puts name }

10.times do
  puts name
end
