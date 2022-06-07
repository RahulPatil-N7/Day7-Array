size=10
for((i=1;i<=10;i++))
do
arr[i]=$((RANDOM%900+100))
done
echo "10 random 3 digit numbers are: "${arr[@]}
second_max()
{
first_max=0
second_max=0
for n in "${arr[@]}"
do
   if ((n>first_max))
   then
   second_max=$first_max
   first_max=$n
   elif ((n>second_max && x!=first_max))
   then
   second_max=$n
   fi
done
echo "Second largest element is: "$second_max
}
second_min()
{
first_min=1000
second_min=1000
for n in "${arr[@]}"
do
  if ((n<first_min))
  then
  second_min=$first_min
  first_min=$n
  elif ((n<second_min && x!=first_min))
  then
  second_min=$n
  fi
done
echo "Second smallest number is: "$second_min
}
second_max "${arr[@]}"
second_min "${arr[@]}"
