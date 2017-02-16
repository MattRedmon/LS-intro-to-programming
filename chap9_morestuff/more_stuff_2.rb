# exercise 2 - given code what will print to screen, what will it return?

def execute(&block)
  block.
end
execute { puts "Hello from inside the execute method" }

# ANSWER:
# nothing is printed to the screen
# we would need block.call on line 4 to get the string to print
# The method returns a proc object
