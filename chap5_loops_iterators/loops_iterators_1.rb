# what does the following program return after it's finished executing

x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end
# the each iterator returns the collection of elements => [1, 2, 3, 4, 5]

# the following for loop code does this as well
x = [1,2,3,4,5]
for i in x do
  puts i
end
# after printing #s the for loop returns => [1,2,3,4,5], the same as the each iterator above

# a while loop on the other had returns "nil"
