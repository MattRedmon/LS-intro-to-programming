#  code from chapter on flow control

puts "Put in a number"
a = gets.chomp.to_i

if a == 3
  puts "a is 3"
elsif a == 4
  puts "a is 4"
else
  puts "a is neither 3 nor 4"
end

if x == 3
  puts "x is 3"
end

if x == 3
  puts "x is 3"
elsif x == 4
  puts "x is 4"
end

if x == 3
  puts "x is 3"
else
  puts "x is NOT 3"
end

if x == 3 then puts "x is 3"  end

puts "x is 3" if x == 3

puts "x is NOT 3" unless x == 3


#  practice on ternary operater with code from web
puts 1 < 2 ? "One is less than two" : "One is not less than two"

puts 1 > 2 ? "one is less than two" : "one is not less than two"
# if what's left of the ? is true then the first stmt to left of : is returned
# if what's left of the ? is not true then the second stmt to the right of the : is returned

puts 1 < 2 ? "left side TRUE" : "right side FALSE"
puts 1 > 2 ? "left side TRUE" : "right side FALSE"

1 < 2 ? (puts "left side true") : (puts "right side false")
1 > 2 ? (puts "left side true") : (puts "right side false")

var = 5
puts var > 3 ? true : false
puts var > 8 ? true : false

score = 50
puts score > 40 ? "pass" : "fail"
puts score < 49 ? "pass" : "fail"

score = 51
age = 9
puts (age > 10 ? (score < 80 ? "behind" : "above average") : (score < 50 ? "behind" : "above average"))

a = 5
case a
when 5
  puts "a is 5"
when 6
  puts "a is 6"
else
  puts "a is neither 5 nor 6"
end

# refactor of above - eliminates writing puts so many times
a = 5
answer = case a
when 5
  "a is 5"
when 6
  "a is 6"
else
  "a is neither 5 nor 6"
end
puts answer

a = 5
answer = case
when a == 5
  "a is 5"
when a == 6
  "a is 6"
else
  "a is neither 5 nor 6"
end
puts answer

a = 5
if a
  puts "how can this be true?"  # every expression evals to true when used in flow control
else                            # except for false and nil
  puts "it is not true"
end
