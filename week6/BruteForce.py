#!/usr/bin/python3 
      
# Here we import the python modules hashlib and itertools for use in the script.
import hashlib as hl
import itertools as it
      
# Define a function that creates the hash of the password.
def pass_hash(passwd):

    # Define the variable hash_pass as a global variable so that we can call upon it outside of the function.
    global hash_pass

    hash_pass = hl.sha256(passwd.encode("utf-8")).hexdigest() 

# Enter the password we would like to try and crack as the input of the pass_hash() function.
# Enter the password inside " ".
pass_hash("yarp")

# Set the characters that we are including in our password generator.
letters = 'abcdefghijklmnopqrstuvwxyz'

# We set the length that we would like the password to be.
length = 5

# Used to break the outside for loop once the correct password has been found.
# Inspiration for this solution to breaking the outer loop is from the below:
# break statement inside a for loop not working. (2017, August 24). Stack Overflow. https://stackoverflow.com/questions/45851222/break-statement-inside-a-for-loop-not-working/45851246#45851246
cracked = False

for i in range(length + 1):

    # Generates a list of tuples of all different combinations of the characters specified in letters.
    # We are computing the product of the iterable letters over itself, length + 1 times.
    tuples = it.product('abcdefghijklmnopqrstuvwxyz', repeat=i)

    for xy in tuples:

        # Without using .join below, the words would look like this: a a a (for a length = 2, for example).
        # For each "word" generated by tuples, we join them together.
        # We specify that we want them joined together by not putting anything in the string separator in front of .join, ''.
        word=''.join(xy)
        

        # The below code is taken from the DictionaryAttack.py script from Week 6.
        # Only the variable names have been changed to coincide with what I have written in this script.
        word_hash = hl.sha256(word.encode("utf-8")).hexdigest()

        print(f"Trying password {word}:{word_hash}")

        if(word_hash == hash_pass): 
      
            print(f"Password has been cracked! It was {word}") 

            # The below break only breaks the inner for loop.
            # When the password has been cracked, we also need to break the outer for loop.
            # Do this by setting cracked = False before the outer for loop.
            # Once the password has been cracked, set cracked = True.
            # This will then break the outermost for loop.
            cracked = True
      
            break 
    
    # If the password has been cracked, then cracked = True and the loop breaks.
    if(cracked == True): break


# References:

# break statement inside a for loop not working. (2017, August 24). Stack Overflow. https://stackoverflow.com/questions/45851222/break-statement-inside-a-for-loop-not-working/45851246#45851246
# itertools — Functions creating iterators for efficient looping — Python 3.9.6 documentation. (n.d.). Python. Retrieved August 23, 2021, from https://docs.python.org/3/library/itertools.html#itertools.product
# Python Functions. (n.d.). W3Schools. Retrieved August 23, 2021, from https://www.w3schools.com/python/python_functions.asp
# Python String join() Method. (n.d.). W3Schools. Retrieved August 23, 2021, from https://www.w3schools.com/python/ref_string_join.asp

     