#!  /bin/bash
# username.sh
echo "Username Instructions: "
echo "Username can only consist of digits, underscores, and lower case letters."
echo "Username must be 3-12 characters"
echo "Username must start with a lower case letter"
echo "Enter a username following the instructions above: "
read USERNAME
while echo $USERNAME | egrep -v "^[a-z][_,a-z,0-9]{2,11}$" > /dev/null 2>&1
do
	echo "You must enter a valid username - please look over instructions!"
	echo "Enter a valid username: "
	read USERNAME
done
echo "Username valid. Thank you"
