#Welcome to Sorting Arithmetic computation problem
read -p " enter input1 :" a
read -p " enter input2 :" b
read -p " enter input3 :" c

result1=$(($a+$b*$c))
echo "Result:" $result1
result2=$(($a*$b+$c))
echo "Result:" $result2
result3=$(($a+$b/$c))
echo "Result:" $result3
result4=$(($a%$b+$c))
echo "Result:" $result4
compute["result"]=$result1
compute["result"]=$result2
compute["result"]=$result3
compute["result"]=$result4

arr=( [result1]=$result1 [result2]=$result2 [result3]=$result3 [result4]=$result4 )
echo "All values stored in a dictionary:${arr[@]}"

echo "The values in descending order is"
for k in "${!arr[@]}"
do
 echo $k 'is' ${arr["$k"]}
done | sort -nr -k3
echo "The values in ascending order is"
for k in "${!arr[@]}"
do
  echo  $k 'is' ${arr["$k"]}
done | sort -n -k3
