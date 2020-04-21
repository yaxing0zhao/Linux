## if
echo "--------------#if---------------"
num1=100
num2=100
if test $[num1] -eq $[num2]
then
	echo "equal"
else 
	echo "unequal"
fi

echo "-----if2-----"
if [ $num1 == $num2 ]
then
	echo "equal"
else 
	echo "unequal"
fi

## loop
echo "---------------#for----------------"
myarray=(1 2 3 4 a b c d)
for i in 1 2 3 4 5 "6" "7" 
do
	echo $(( $i+1))
	echo $i+1
	echo $i
done

## wile loop
echo "--------------#while loop--------------"
int=1
while(( $int<=5 ))
do
	echo $int
	let "int++"
done

## until 
echo "---------------#until------------------"
a=1
until [ ! $a -lt 10 ]
do 
	echo $a
	a=$(( $a+1 ))
done

## case
echo "-----------------#case-----------"
echo "please input a number from 1 to 4"
echo "your input is:"
read aNum
case $aNum in
	1) echo 'you inputed 1'
	;;
	2) echo 'you inputted 2'
	;;
	3) echo 'you inputted 3'
	;;
	4) echo 'you inputted 4'
	;;
	*) echo 'not in the range from 1 to 4'
esac

## break, continue
echo "----------------#break, continue-----------"
while :
do
	echo "please input a number from 1 to 5"
	read aNum
	case $aNum in
		1|2|3|4|5) echo "you inputed $aNum"
		;;
		*) echo "not in the range from 1 to 5"
			break
		;;
	esac
done


## function
echo "----------------#function-------------------"
funWithReturn(){
	echo "for sum"
	echo "please input the first number:"
	read aNum
	echo "please input the second number:"
	read anotherNum
	echo "your numbers are $aNum and $anotherNum"
	return $(( $aNum+$anotherNum ))
}
funWithReturn
echo "the sum of your numbers is $?"

echo "-------fun2-----"
funWithPara(){
	echo "the first para: $1"
	echo "the tenth para: ${10}"
	echo "the number of para: $#"
	echo "output all para: $*"
}
funWithPara 1 2 3 4 5 6 7 8 9 0 13 56 87

