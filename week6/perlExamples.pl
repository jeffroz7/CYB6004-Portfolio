#!/usr/bin/perl

#variables
#value="blah" - in bash
$value="blah";
#variables in perl always need a $ in front of them.

#arithmetic is built into the perl language.
$x=5;

$x=$x+10;

#print has the -n flag by default, i.e., it will not go onto a newline.
#print executes escape sequences by default, like echo -n
#We indicate that the statement ends using ";"
print "Hello there\n";
print "This is more text and the value is $value\n";
print "The value of x is $x\n";

if( $value =~ m/.*ah$/ ) {
    print("Value ends with the letters ah\n");
}
else {
    print("Value does not end with the letters ah\n");
}


