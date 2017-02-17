# exercise 15 - use "delete_if" and "start_with?" to delete words beginning w/ s

arr = [ "snow", "winter", "ice", "slippery", "salted roads", "white trees" ]

arr.delete_if { |word| word.start_with?("s") }
puts "#{arr}"



arr = [ "snow", "winter", "ice", "slippery", "salted roads", "white trees" ]

arr.delete_if { |word| word.start_with?("s","w") }
puts "#{arr}"
