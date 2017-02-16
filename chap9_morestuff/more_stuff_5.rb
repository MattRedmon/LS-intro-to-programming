# exercise # 5 -- why does the following code give an error?

def execute(block)
  block.call
end
execute { puts "Hello from inside the execute method."}

# ANSWER:
# the error is in line 3 : def execute(block)
# without the ampersand & before block to make it a block, it appears to be
# a regular parameter. the correct code would be: def execute(&block)
