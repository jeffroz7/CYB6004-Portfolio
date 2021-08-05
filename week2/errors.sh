#!/bin/bash 

secret='shhh' #Don't tell anyone! 

read -s -p "what's the secret code? " 
      
echo 

#if the user types in the correct secret, tell them they got it right! 
      
if [[ "$secret" = $REPLY ]]; then 
      
    echo "You got it right!" 
      
    correct='true' 
      
else
    
    echo "You got it wrong :(" 
      
    correct='false' 
      
fi 
      
case $correct in 
      
    false) 
      
        echo "Go Away!" #people who get it wrong need to be told to go away! 
      
        ;; 
      
    true) 
      
        echo "You have unlocked the secret menu!" 
      
        # Created a secret menu for those in the know

        echo
        echo "Welcome to the Secret menu"
        echo
        echo "1. Begin World domination"
        echo "2. Execute Order 44"
        echo "3. Reveal the Meaning of Life"
    
        read -p "What would you like to do? " option

        case $option in

            1) echo "Error 404: File not found" ;;

            2) echo "Error 404: File not found" ;;

            3) echo "42" ;;
    
            *) echo "Error 404: File not found" ;;

        esac

        ;;
      
esac 


     