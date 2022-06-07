read -p "Enter the range start :" start
read -p "Enter the range end   :" end
index=0
for (( i=start;i<=end; ))
do
  if ((i%11==0))
  then
  arr[index++]=$i
  ((i+=11))
  else
  ((i++))
  fi
done
echo "The digits that are repeated twice are : " ${arr[@]}
