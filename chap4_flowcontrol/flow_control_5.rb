# rewrite exercise 3 using the case statement


# attempt 1
puts "Please enter a number from 0 to 100"
num = gets.chomp.to_i

case
when num < 0
  puts "your number is a negative number and not what was asked for."
when num >= 0 && num <= 50
  puts "your number is between 0 and 50"
when num >= 50 && num <= 100
  puts "your number is between 51 and 100"
when num > 100
  puts "your number is greater than 100"
end

# attempt 2
def case1(num)
  case
  when num < 0
    puts "Your number is not between 0 and 100!"
  when num <= 50
    puts "Your number is between 0 and 50"
  when num <= 100
    puts "Your number is between 51 and 100."
  when num > 100
    puts "Your number is greater than 100."
  end
end

  puts "Please enter a number between 0 and 100"
  num = gets.chomp.to_i
case1(num)


# attempt 3 - based on given solution
def case2(num)
  case num
  when 0..50
    puts "#{num} is between 0 and 50"
  when 51..100
    puts "#{num} is between 51 and 100"
  else
    puts "#{num} is NOT between 0 and 100"
  end
end
puts "Please enter a number between 0 and 100"
num = gets.chomp.to_i
case2(num)
