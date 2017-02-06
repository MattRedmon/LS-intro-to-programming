# loop through has by key, by value, then by both

movies = { "Star Wars" => 1977,
           "Empire Strikes Back" => 1980,
           "Return of the Jedi" => 1983
         }

movies.keys.each { |n| puts n }
movies.values.each { |y| puts y }
movies.each { |n, y| puts "#{n} was released in #{y}" }
puts

# the following is alternate code from the answer
# "each_key" works as an alternative to the "keys.each" method call
movies.each_key { |n| puts n }
movies.each_values { |y| puts y }
movies.each { |n, y| puts "#{n} was released in #{y}" }
