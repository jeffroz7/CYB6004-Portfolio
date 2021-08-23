#!/usr/bin/perl 
      
use Digest::SHA qw(sha256_hex); 
      
#read the password hash 
      
#$passwordHash = "04e77bf8f95cb3e1a36a59d1e93857c411930db646b46c218a0352e432023cf2"; 
#$passwordHash = "dc2f2bbbfa520857fa2d00e3f7c2751ec1f37eecb00589f699246fafbd0e1b97";
$passwordHash = sha256_hex("daniel");
print "The hash you are looking for is: $passwordHash\n";
      
#open the wordlist 
      
open(WORDLIST, "<wordlist.txt") or die "Couldn't open wordlist, $!" ; 
      
#repeat for each word 
      
while(<WORDLIST>) { 
      
    chomp; 
      
    $word = $_; 
      
    #hash the word 
      
    $wordlistHash = sha256_hex($word); 
      
    print "$word: $wordlistHash\n"; 
      
    #if the hash is the same as the correct password's hash then we have cracked the password! 
      
    if($wordlistHash eq $passwordHash) { 
      
        print("Password has been cracked! It was $word\n"); 
      
        exit; 
      
    } 
      
} 
     