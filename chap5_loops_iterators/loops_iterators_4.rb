# write a method that counts down to zero using recursion


def reducer(start)
  puts start
  if start > 0
    reducer(start - 1)
  end
end

puts "Please enter a starting number"
start = gets.chomp.to_i

reducer(start)


# the following is the code from the provided solution

def count_to_zero(number)
  if number <= 0
    puts number
  else
    puts number
    count_to_zero(number-1)
  end
end

count_to_zero(10)
count_to_zero(20)
count_to_zero(-3)
