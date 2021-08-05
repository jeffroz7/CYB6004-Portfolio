#!/bin/bash

# Creates a variable for the output of the script IpInfo.sh
# We use this info as it has already been edited and formatted the way we want.
ip_info=$(./IpInfo.sh)

# The below will edit the output of IpInfo.sh to show only the IP Addresses.
# The only lines we want in the output of the script are the IP Addresses.
# The -n flag hides the entire output of IpInfo.sh, except for what we specify within sed.
# Therefore, to output only the IP Addresses, we specify this inside said using /IP Address: /
# The command p is used within sed to print.
IP_only=$(echo "$ip_info" | sed -n '/IP Address: / {
p
}')

# Now we echo the IP_only variable, which contains only the IP addresses.
# The test "The IP Addresses are:" has been coloured light cyan.
echo -e $'\033[1;36m'The IP Addresses are:$'\033[0m'\\\n"$IP_only"
