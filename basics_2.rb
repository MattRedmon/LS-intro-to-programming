#  Use the modulo operater, division, or a combo of both to take a 4 digit #
#  and find the digit in the thousands, hundreds, tens and ones place

puts thousands = 8765 / 1000
puts hundreds = 8765 % 1000 / 100
puts tens = 8765 % 1000 % 100 /10
puts ones = 8765 % 1000 % 100 % 10
# when dividing by and integer you will recieve an integer in return


puts thousands = 8765.0 / 1000
puts hundreds = 8765.0 % 1000 / 100
puts tens = 8765.0 % 1000 % 100 /10
puts ones = 8765.0 % 1000 % 100 % 10
# the intro of floats will yield different results
