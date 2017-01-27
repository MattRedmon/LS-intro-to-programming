# you get this error when you run the code below
# test_code.rb:96: syntax error, unexpected end-of-input, expecting keyword_end
# what's the solution to fix this??


# copied an pasted

def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
end

equal_to_four(5)

# ANSWER -- you get the error because the above code is missing an "end"
# there should be an end for the method def as well as one for the if statement
# below is the correct code
def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end   # this is the end at the correct indent that is missing from code at top
end

equal_to_four(5)
