#!/bin/bash
      
awk '

BEGIN { 

    # Here, we set the field separator to ":". 
    # If we do not set the field separator to ":", we will not be able to use awk correctly as the default FS is " " (a whitespace).
    # We can see that the data in /etc/passwd is separated by ":" by running a command such as: cat /etc/passwd.
    # We set FS in "BEGIN" so that it is set to : before any data is processed. By doing this, we know all the data will be processed correctly.

    FS=":"; 
      
    # The first print command is used to create the top part of the table, printing in columns, from left to right, and spaced differently, "Username", "UserID", "GroupID", "Home" and "Shell", in blue.
    # The second print command is used to format the table underneath the headings.

    print "\n| \033[34mUsername\033[0m         | \033[34mUserID\033[0m | \033[34mGroupID\033[0m | \033[034mHome\033[0m                 | \033[34mShell\033[0m                |"; 

    print "|__________________|________|_________|______________________|______________________|";

} 
      
{ 

    # The regex in the below if statement is searching for the lines in /etc/passwd that end in "/bin/bash", i.e, the users who have /bin/bash as their default shell.
    # The positional meta character $ means that it searches for /bin/bash at the end of the line.

    if($7 ~ /\/bin\/bash$/) #If this line is removed, then the printf command below would print all of the lines in /etc/passwd, like the first part of the brief for this script.

    # The printf command then prints the results of the lines in a neatly formatted table using print format codes for digits (%d) and strings (%s) with spacings.
    # We choose which fields we would like printed in printf by using $x, where x is the field number, at the end of the print command. For this code, we want to print fields 1, 3, 4, 6 & 7.

    {
    printf("| \033[33m%-16s\033[0m | \033[35m%-6d\033[0m | \033[35m%-7d\033[0m | \033[36m%-20s\033[0m | \033[36m%-20s\033[0m |\n", $1, $3, $4, $6, $7) 
    }


} 
      
END { 

    # Like the printf command on line 18, the printf command below formats the table into near columns.

    print "|__________________|________|_________|______________________|______________________|\n"; 
      
}
' /etc/passwd