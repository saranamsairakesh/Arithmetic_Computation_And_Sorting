echo "Welcome to arithmetic computations"
read -p "Enter Number a= " a
read -p "Enter Number b= " b
read -p "Enter Number c= " c
declare -A arithmeticDictionary
declare -A arithmeticArray
arithmetic1=$(($a+$b*$c))
arithmetic2=$(($a*$b+$c))
arithmetic3=$(($c+$a/$b))
arithmetic4=$(($a%$b+$c))
arithmeticDictionary[arith1]=$arithmetic1
arithmeticDictionary[arith2]=$arithmetic2
arithmeticDictionary[arith3]=$arithmetic3
arithmeticDictionary[arith4]=$arithmetic4

index=0
for arith in "${arithmeticDictionary[@]}"
do
	arithmeticArray[$index]=$arith
	index=$(($index+1))
done
echo ${arithmeticArray[@]}
