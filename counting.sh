#Couting Program

echo "what is your name?"
read myName

while [[ $myName == "" ]];
	do
	echo "Enter a name"
	read myName
done

while [ ${#myName} -lt 2 ]
	do
	echo "Name is too short"
	echo "Try again"
	read myName
done  

while [ ${#myName} -gt 15 ]
	do
	echo "Name must be in between 2 and 15 chars"
	echo "Try again please"
	read myName
	echo "Welcome $myName"
done

 
if [[ $myName =~ ^[A-Za-z_]+$ ]]; then
	echo "Hello $myName"
	else
	echo "Thats not a name"
	echo "What is your name?"
	read myName
fi


echo "Enter a number between 2 and 100":
	read myNum
while [ -z "$myNum" ]
	do
	echo "No blanks"
	echo "Try again, Enter a number between 2 and 100"
	read myNum
done

while [[ $myNum =~ [^0-9] ]]
	do
	echo "Please use a number"
	echo "Enter a number:"
	read myNum
done

while [ $myNum -lt 2 ];
	do
	echo "Number must be greater than 2"
	read myNum
done

while  [ $myNum -gt 100 ];
	do
	echo "Number must be less than 100"
	read myNum
done


counter=0

if ! [[ $((myNum %2)) == 0 ]];
then
	counter=1
else
	counter=0
fi

while [[ $counter -le $myNum ]];
	do
	echo "$counter"
	let counter=$counter+2;
	sleep 0.2
done

echo "Great Job!!"
