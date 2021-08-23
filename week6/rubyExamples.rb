#!/usr/bin/ruby

#both of the below are valid ways of using the puts command.
#puts works like echo in bash or print in python.
puts "Hello"
puts("Hi there!")

value = "blah"

items = [1,2,5,26,13,14]

puts("The value is " + value)

#This for loop works like in bash
#for item in items
#    puts(item)
#end

#This for loops works like functional based language.
#items.each do | item |
#    puts(item)
#end
#The below is a one line version of the above
#items.each { | item | puts(item) }

#This for loops works like an object-based language.
#This works like a C for loop.
#for i in 0.step(6)
#    puts(items[i])
#end

#The below puts command prints exactly the same result as the above for loops.
#puts(items)


