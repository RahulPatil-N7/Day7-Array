echo "Enter 3 Integers :"
for (( i=0;i<3;i++ ))
do
    read n
    arr[i]=$n
done
sum=0
for (( i=0;i<1;i++ ))
do
    for (( j=i+1;j<2;j++ ))
    do
        for (( k=j+1;k<3;k++ ))
        do
            if (( arr[i] + arr[j] + arr[k] == sum ))
            then
                echo "The 3 integers which have sum 0 is: "${arr[i]} ${arr[j]} ${arr[k]}
            else
                echo "Invalid sum of integers"
            fi
        done
    done
done
