
# REGEX

def has_a_b?(string)
  if string =~ /b/
    puts "We have a match."
  else
    puts "No match here."
  end
end

  has_a_b?("basketball")
  has_a_b?("football")
  has_a_b?("hockey")
  has_a_b?("golf")

def has_a_b?(string)
  if /b/.match(string)
    puts "We have a match."
  else
    puts "No match here."
  end
end

has_a_b?("basketball")
has_a_b?("football")
has_a_b?("hockey")
has_a_b?("golf")


# RUBY STANDARD CLASSES

puts Math.sqrt(400)
puts Math::PI

t = Time.new(2008, 7, 4)
puts t.monday?
puts t.friday?


# VARIABLES AS POINTERS

a = "hi there"
puts a
b = a
puts b
a = "not here"
puts a
puts b

a = "hi there"
b = a
a << ", Bob"  # mutates the caller and modifies the existing string
puts a        # the code that both a an b point to is modfied by the << operator
puts b

def test(b)
  b.map { |letter| "I like the letter: #{letter}" }
end

a = ['a', 'b', 'c']
puts test(a)
puts a

# BLOCS AND PROCS

def take_block(&block)
  block.call
end

take_block do
  puts "Block being called in the method!"
end

def take_block(number, &block)
  block.call(number)
end
number = 42
take_block(number) do |num|
  puts "Block being called in the method! #{num}"
end

talk = Proc.new do
  puts "I am talking."
end
talk.call

talk = Proc.new do |name|
  puts "I am talking to #{name}"
end
talk.call "bob"

def take_proc(proc)
  [1,2,3,4,5].each do |number|
    proc.call number
  end
end

proc = Proc.new do |number|
  puts "#{number}. Proc being called in the method!"
end
take_proc(proc)


# EXCEPTION HANDLING

names = ['bob', 'joe', 'steve', nil, 'frank']
names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} letters in it."
  rescue
    puts "Something went wrong"
  end
end

zero = 0
puts "Before each call"
zero.each { |element| puts element } rescue puts "Can't do that!"
puts "After each call"

def divide(number, divisor)
  begin
    answer = number / divisor
  rescue ZeroDivisionError => e
    puts e.message
  end
end

puts divide(16,4)
puts divide(4,0)
puts divide(14,7)


# EXCEPTIONS AND STACK TRACES
def greet(person)
  puts "Hello, " + person
end
greet("John")
greet(1)

def space_out_letters(person)
  return person.split("").join(" ")
end
def greet(person)
  return "H e l l o, " + space_out_letters(person)
end
def decorate_greeting(person)
  puts "" + greet(person) + ""
end
decorate_greeting("John")
decorate_greeting(1)
