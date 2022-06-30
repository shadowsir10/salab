echo "enter the limit"
read n
i=3
s=2
while test $i -le $n
do
f=1
j=2
while test $j -lt $i
do
k=`expr $i % $j`
if test $k -eq 0
then
f=0
break
fi
j=`expr $j + 1`
done
if test $f -eq 1
then
s=`expr $s + $i`
fi
i=`expr $i + 1`
done
echo "sum of prime=" $s
