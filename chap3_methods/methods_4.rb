# what does the following code print to the screen


def scream(words)
  words = words + "!!!!"
  return
  puts words
end
scream("Yippeee")

# Nothing will be printed to the screen
# our scream methods takes in the argument "Yippeee" and adds "!!!!" to it
# but because return comes after this and before the puts statement
# the code exit the method before it is printed to the screen
