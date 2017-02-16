# exercise 1 - write program that checks for a seq of characters

def match_seq?(string)
  if string.downcase =~ /lab/  # addition of downcase allows for matches with cap letters
    puts "#{string} is a match."
  else
    puts "Sorry, #{string} is not a match."
  end
end

puts match_seq?("laboratory")
puts match_seq?("experiment")
puts match_seq?("Pans Labyrinth") # this one only true if we use downcase method on our string
puts match_seq?("elaborate")
puts match_seq?("polar bear")


# alternative code with MatchData object used
def match_seq?(string)
  if /lab/.match(string.downcase) # again, addition of downcase method lets us match to upcase arguments
    puts "#{string} is a match."
  else
    puts "Sorry, #{string} is not a match."
  end
end

puts match_seq?("laboratory")
puts match_seq?("experiment")
puts match_seq?("Pans Labyrinth") # this one only true if we use downcase method on our string
puts match_seq?("elaborate")
puts match_seq?("polar bear")




# solution provided has alternate order in if statement
def check_in(word)
  if /lab/ =~ word  # my solution has what I'm checking and what I'm checking it against switched
    puts word
  else
    puts "No match"
  end
end

check_in("laboratory")
check_in("experiment")
check_in("Pans Labyrinth")
check_in("elaborate")
check_in("polar bear")
