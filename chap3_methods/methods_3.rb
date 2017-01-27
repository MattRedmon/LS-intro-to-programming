# write a program that includes a method called mulitply that takes two args
# and returns product of the two numbers

def multiply(num1, num2)
  product = num1 * num2
  puts product
  product
end

multiply(5,5)

puts multiply(10,10).to_s.length # chained several methods to confirm that our
                                 # method returns a value and not "nil"
