echo "enter the coifficents="
read a b c
d=`expr $b \* $b - 4 \* $a \* $c`
if test $d -gt 0
then
s=`echo "scale=4; sqrt($d)" | bc`
echo $s
x1=`echo "scale=4; (- $b + $s) / (2 * $a)" | bc`
x2=`echo "scale=4; (-$b - $s) / (2 * $a)" | bc`
echo "root 1" $x1
echo "root 2" $x2
elif test $d -lt 0 
then
echo "roots are imaginary"
else
x1=`echo "scale=4; (- $b ) / (2 * $a)" | bc`
echo "only one root" $x1
fi

