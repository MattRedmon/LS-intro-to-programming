# exercise # 3  use select method to extract all odd #s into new array

arr = [1,2,3,4,5,6,7,8,9,10]

# my first solution - mistakenly used EACH not SELECT as specified
arr_new = []
arr.each do |num|
  if (num % 2) != 0
  arr_new << num
  end
end
puts  "#{arr_new}"


# my solution version 2 using the correct array method SELECT
new_arr = arr.select { |num| num.odd? }
puts "#{new_arr}"




# provided possible solution -->
new_array = arr.select { |number| number % 2 != 0 }  # uses same selection logic as my first solution
puts "#{new_array}"
