#!/usr/bin/python3

print("Hi there!")

value = "blah"

y = 2

#print("The value of value is value" . value)

print("The value is %s" % value)

if ( y < 10 ): 
    print("y is small")
else:
    print("y is big")

    #print("This is some more text") - part of the else statement.
#print("This is some more text") - not part of the else statement.

#There is no "fi" that is used to close the if statement.
#The whitespace is used to control the scope of the statement.
#If print("This is some more text") above is tabbed, then it is contained inside the "else" part of the if statement.
#If print("This is some more text") is not tabbed, then it is a separate command.
