# what is the problem with the following code and how can it be fixed?

names = ["bob", "joe", "susan", "margaret"]
# names["margaret"] = "jody"
# in line 4 the argument "margaret" passed into names[] is causing the error
# an integer is expected. if we are targeting the 4th element in the array to
# change it to "jody" we need to do => names[3]

names[3] = "jody"
puts "#{names}"
# line 9 changes the 4th element in names from "margaret" to "jody"
