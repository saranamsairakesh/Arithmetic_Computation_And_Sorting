echo "Welcome to arithmetic computations"
read -p "Enter Number a= " a
read -p "Enter Number b= " b
read -p "Enter Number c= " c
echo "a= "$a",b= "$b",c= "$c
arithmetic1=$(($a+$b*$c))
arithmetic2=$(($a*$b+$c))
arithmetic3=$(($c+$a/$b))
echo $arithmetic1,$arithmetic2,$arithmetic3

