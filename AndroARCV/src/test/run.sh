#training
header=zurich
cnt=0
max=$1
echo $((max * 4)) $max
for i in $(ls $header | grep [1245].png)
do
	((cnt++));
	echo "$header/$i 1 $(echo $i | cut -d. -f1) $header/$i"
	if [ $cnt -eq $((max * 4)) ]
	then
		break;
	fi
done

#testing
cnt=0
for i in $(ls $header | grep 3.png)
do
	echo "$header/$i 1 $(echo $i | cut -d. -f1)"
	((cnt++));
	if [ $cnt -eq $max ]
	then
		break;
	fi
done	
