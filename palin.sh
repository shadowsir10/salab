echo "enter the string="
read str1
i=1
f=1
s=`echo $str1 |wc -c`
l=`expr $s - 1`
e=`expr $l / 2`
for((i=1 ;i<=e; ++i))
do
a=`echo $str1 | cut -c $i`
b=`echo $str1 | cut -c $l`
if test $a != $b
then
f=0
break
fi
l=`expr $l - 1`
done
if test $f != 0
then
echo "the string is palindrome"
else
echo "the string is not palindrome"
fi


