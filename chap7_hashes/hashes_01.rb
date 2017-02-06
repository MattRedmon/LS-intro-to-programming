# given hash of family members use select method to gather only
# immediate family members' names into a new array

family = { uncles: ["bob", "joe", "steve"],
           sisters: ["jane", "jill", "beth"],
           brothers: ["frank", "rob", "david"],
           aunts: ["mary", "sally", "susan"]
         }

im_fam =  family.select { |k, v| k == :sisters || k == :brothers }
puts "#{im_fam}"
puts "#{im_fam.to_a}"
puts "#{im_fam.flatten}"
