

# creating a new file
my_file = File.new("simple_file.txt", "w+")
my_file.close

# writing to a file
File.open("simple_file.txt", "w") { |file| file.write("adding first line of text") }
File.read("simple_file.txt")

sample = File.open("simple_file.txt", "w+")
sample.puts("another example of writing to a file")
sample.close
File.read("simple_file.txt")


#  Ruby will automatically close a file if the open method is called with a block like below
File.open("simple_file.txt", "a+") do |file|
  file << "Here we are with a new line of text"  # "file" is declared as placeholder which we can use
end                                              # to append another line w/ the shovel operator (<<)

File.readlines("simple_file.txt").each do |line|
  puts line
end


File.open("simple_file.txt", "a+") do |file|
  file.write "Writing to files in Ruby is simple"
end
File.readlines("simple_file.txt").each_with_index do |line, line_num|
  puts "#{line_num}: #{line}"
end


# deleting a file
# File.new("dummy_file.txt", "w+")
# File.delete("dummy_file.txt")
