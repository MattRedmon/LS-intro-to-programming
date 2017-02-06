# code from chap 7 hashes

#old style hash:
old_style_hash = {:name => "bob"}

# newer style hash:
new_style_hash = {name: "bob"}

# hash with many key value pairs:
person = {height: "6 ft", weight: "160lbs"}

# add to an existing hash:
person[:hair] = "brown"
person[:age] = 27
puts "#{person}"

# remove something from an existing hash:
person.delete(:age)
puts "#{person}"

# retrieve a piece of info from a hash:
puts person[:weight]

# merge two hashes together
new_hash = {name: "bob", age: 62}
new_person1 = person.merge(new_hash)  # non destructive merge
puts "#{new_person1}"
puts "#{person}"
new_person2 = person.merge!(new_hash)  # has bang operater ! so is a destructive merge
puts " - - - - - -"
puts "#{new_person2}"
puts "#{person}"  # the origianl has has been changed

# iterating over hashes
person = {name: "bob", height: "6ft", weight: "160lbs", hair: "brown", age: 99}
person.each do |key, value|
  puts "Bob's #{key} is #{value}"
end

# hashes as optional parameterscd
def greeting(name, options = {})
  if options.empty?               # we use the empty? method to detect whether
    puts "HI, my name is #{name}" # options param, which is hash, had anything passed into it
  else
    puts "HI, my names is #{name} and I'm #{options[:age]}" +
         " years old and I live in #{options[:city]}"
  end
end
greeting ("Bob")
greeting("Bob", {age: 62, city: "New York City"})
greeting("Bob", age: 62, city: "New York City")  # this code yields same result as line 52 with {} brackets
# line 52 convention common in rails code (as opposed to line 51 with the {} braces)

{"height" => "6 ft"}  # string as key
{["height"] => "6 ft"}  # array as key
{1 => "one"}  # integer as key
{45.324 => "forty-five point something"}  # float as key
{{key: "key"} => "hash as a key"}  # hash as a key

# COMMON HASH METHODS
# has_key? method checks to see if hash has specific key
name_and_age = {"Bob" => 42, "Steve" => 31, "Joe" => 19}
puts name_and_age.has_key?("Steve")
puts name_and_age.has_key?("Larry")

# select method allow pass a block and return key-value pairs that eval true when ran thru block
puts name_and_age.select { |k,v| k == "Bob" }
puts name_and_age.select { |k,v| (k == "Bob") || (v == 19) }

# fetch method pass a given key and return val for that key if it exists
puts name_and_age.fetch("Steve")
# puts name_and_age.fetch("Larry") # this code throws and error since "Larry" is not in hash
puts name_and_age.fetch("Larry", "Larry isnt in this hash")  # you can specify option for return if key not in hash

# to_a method returns array version of hash  -- does not modify hash permanently
puts "#{name_and_age.to_a}"
puts "#{name_and_age}"

# keys and values methods allow retrieve all keys or values as array
puts "#{name_and_age.keys}"
puts "#{name_and_age.values}"
# because in array can iterate over result
name_and_age.keys.each { |k| puts k }
name_and_age.values.each { |k| puts k }

# HASH ORDER -- in older version of Ruby could not count on maintaining order
# as of version 1.9 hashes maintain the order in which they're stored
