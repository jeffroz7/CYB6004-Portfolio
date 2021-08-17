#!/bin/bash

echo 

# An echo command used to create the top part of the table, printing in columns, from left to right, and spaced differently, "Username", "UserID", "GroupID", "Home" and "Shell", in blue.
echo -e "| \033[34mUsername\033[0m         | \033[34mUserID\033[0m | \033[34mGroupID\033[0m | \033[034mHome\033[0m                 | \033[34mShell\033[0m                |"

# An echo command used to format the table underneath the headings.
echo -e "|__________________|________|_________|______________________|______________________|"

# This awk command searches for results in /etc/passwd that contain "/bin/bash" at the end of the line.
# The -F flag sets the field separator as ':', which we know is the field separator for /etc/passwd when we ran the command cat /etc/passwd.
# This is found by using the regex meta character $ to search for when /bin/bash is at the end of the line.
# The default syntax for awk is: awk '/regex/' where 'regex' is a placeholder for what we want to search for.
# The printf command prints the results of the lines in a neatly formatted table using print format codes for digits (%d) and strings (%s) with spacings.
# We choose which fields we would like printed in printf by using $x, where x is the field number, at the end of the print command. For this code, we want to print fields 1, 3, 4, 6 & 7.

awk -F: '/\/bin\/bash$/{ printf("| \033[33m%-16s\033[0m | \033[35m%-6d\033[0m | \033[35m%-7d\033[0m | \033[36m%-20s\033[0m | \033[36m%-20s\033[0m |\n", $1, $3, $4, $6, $7) }' /etc/passwd

# The different columns in the body of the table are printed in different colours. The results for:
    # "Username" are printed in brown/yellow,
    # "UserID" and "GroupID" are printed in purple, and
    # "Home" and "Shell" are printed in cyan.

# An echo line used purely to format the bottom of the table
echo -e "|__________________|________|_________|______________________|______________________|"


# grep '/bin/bash$' /etc/passwd - finds the lines that have the default shell as "/bin/bash"
