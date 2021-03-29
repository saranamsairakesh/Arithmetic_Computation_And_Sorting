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

arrayLength=$index

for((i=0;i<$arrayLength;i++))
do
	for((j=0;j<$(($arrayLength-$i-1));j++))
	do
		if [ ${arithmeticArray[$j]} -lt ${arithmeticArray[$(($j+1))]} ]
		then
			temp=${arithmeticArray[$(($j+1))]}
			arithmeticArray[$(($j+1))]=${arithmeticArray[$j]}
			arithmeticArray[$j]=$temp
		fi
	done
done

for((i=0;i<$arrayLength;i++))
do
   for((j=0;j<$(($arrayLength-$i-1));j++))
   do
      if [ ${arithmeticArray[$j]} -gt ${arithmeticArray[$(($j+1))]} ]
      then
         temp=${arithmeticArray[$(($j+1))]}
         arithmeticArray[$(($j+1))]=${arithmeticArray[$j]}
         arithmeticArray[$j]=$temp
      fi
   done
done
echo "Ascending Sort: "${arithmeticArray[@]}
