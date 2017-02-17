# exercise 17 - what is the output of the following code??

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

# ANSWER:
# We are given two hashes and the codes compares the two
# and reponds whether the hashes are equal, containing the same
# key:value pairs, or if they are different. --- One has uses the older
# syntax style and the other the new style, however they appear to contain the
# same info even they they do not "look" identical

# If the program is run we get the output "These hashes are the same!"
