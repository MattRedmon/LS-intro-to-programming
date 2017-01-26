# code from "methods" chapter

def say(words)  # "words" in parens is parameter, what we pass in is argument
  puts words + "."
end
say("hello")
say("hi")
say("how are you?")
say("I'm fine")

def say(words = "hello")
  puts words + "."
end

say()
say("howdy")
say("Wie gehts?")
say("guten abend")
say("buenos dias")
puts # alternative method call below
say
say "howdy" # parnethesis not required but can cause confusion
say "hey"
say "buenos noches"
say "git er done"

# two ways to use methods: some_method(obj) format
# or called with explicit caller like a_caller.some_method(obj)

# mutating the caller is when a called method alters the arg permanently
def some_method(number)
  number = 7 # this is implicitly returned by the method, using return would do it explicitly
end
a = 5
some_method(a)
puts a  # result is 5, some_method does not permanently alter the argument here
# there are actions that can be perfomred on the arg that mutates the caller
# which can in fact alter variables outside of the methods scope

# example of a method that modifies it args permanently
a = [1, 2, 3]
def mutate(array)
  array.pop  # pop mutates the caller
end
puts "Before mutate method: #{a}"  # gives original array
mutate(a)
puts "After mutate method: #{a}"   # gives a = [1, 2]

# example of method that does not mutate the caller
a = [1, 2, 3]
def no_mutate(array)
  array.last   # .last does not mutate the caller
end
puts "Before no_mutate method: #{a}"
no_mutate(a)
puts "After no_mutate method: #{a}"

# In Ruby, every method returns the evaluated result of the last line that is executed
# UNLESS and explicit return comes before it

def add_three(number)
  number + 3
end
returned_value = add_three(4)
puts returned_value

def add_three(number)
  return number + 3
  number + 4
end
returned_value = add_three(4)
puts returned_value

def just_assignment(number)
  foo = number + 3
end
returned_value = just_assignment(2)
puts returned_value

# Chaining methods
def add_three(n)
  n + 3
end

add_three(5).times { puts "This should print 8 times"}

puts "hi there".length.to_s # length method returns integer so we turn it back to string with .to_s

def add_three(n)
  puts n + 3
end

add_three(5).times { puts "will this work?"}  #NO IT WILL NOT
# return val for new add_three returns "nil" (and no longer 8) because of the puts
# puts breaks our ability to continue to chain off of add_three

# fix for above issue
def add_three(n)
  new_value = n + 3
  puts new_value
  new_value
end
add_three(5).times { puts "Now this should work again"}

def add(a, b)
  a + b
end
def subtract(a, b)
  a - b
end

add(20, 45)
subtract(80, 10)

def multiply(num1, num2)
  num1 * num2
end

puts multiply(add(20, 45), subtract(80, 10))

puts add(subtract(80,10), multiply(subtract(20, 6), add(30, 5)))
