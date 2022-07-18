echo Enter a number to find factorial
read num
fact=1
zero=0
while [ $num -gt 0 ]
do
 fact=$(( $fact * $num ))
  let num--
done
echo factiorial is $fact.
