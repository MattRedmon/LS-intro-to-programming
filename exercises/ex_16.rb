# exercise 16 - turn array into new array that consists of one word strings

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

a2 = a.map { |word| word.split }
a2 = a2.flatten
puts "#{a2}"
