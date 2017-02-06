# what method could you use to find out if a hash contains a specific value in it?

names = {
  "Arnold" => 20,
  "Bob" => 40,
  "Charles" => 50,
  "Doug" => 20,
  "Eric" => 30,
  "Fred" => 20,
}

puts names.has_value?(50)
puts names.has_value?(60)
