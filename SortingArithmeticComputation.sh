#Welcome to Sorting Arithmetic computation problem
read -p " enter input1 :" a
read -p " enter input2 :" b
read -p " enter input3 :" c

result1=$(($a+$b*$c))
echo "Result:" $result1
result2=$(($a*$b+$c))
echo "Result:" $result2
