# write program that uses merge and merge! to illustrate the difference between the two

hash1 = { 1 => "one", 2 => "two", 3 => "three" }
hash2 = { 10 => "ten", 20 => "twenty", 30 => "thirty" }

puts hash1.merge(hash2)
puts hash1
puts hash2
puts
puts hash1.merge!(hash2)
puts hash1  # The "merge!" permanently alters hash1
puts hash2
