size=10
for(( i=0;i<size;i++ ))
do
    arr[i]=$(( RANDOM % 900 + 100 ))
done
echo "The 10 random 3 digit numbers are: "
echo "${arr[@]}"

for(( i=0;i<size-1;i++ ))
do
    swappe=0
    for(( j=0;j<size-i-1;j++ ))
    do
        if ((arr[j] > arr[j+1])) 
        then
            temp=${arr[j]}
            arr[j]=${arr[j+1]}
            arr[j+1]=$temp
            swapped=1
        fi
    done
    if ((swapped==0))
    then
        break
    fi
done
echo "The sorted array is: " ${arr[@]}
echo "The second largest element is : "${arr[8]}
echo "The second smallest element is: "${arr[1]}
