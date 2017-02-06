# given the following code-- what's the difference between the two hashes

x = "hi there"
my_hash = { x: "some value" }  # this hash uses a symbol as the key
my_hash2 = { x => "some value" }  # this has uses a string as the key

puts my_hash
puts my_hash2
