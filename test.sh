CSV=$1
SCI=$2
SCIR=`mktemp`
OUT0=emails
OUT1=scientists1

#echo $1
#echo $2

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
fi

VAR0=`cat $CSV | awk -F "," {' print $5 '} | tail -9 | sort -R`
cat $SCI | sort -R > $SCIR

j=1

for i in $VAR0
do
    NM=`sed "${j}q;d" $SCIR`

	echo $i $NM
	j=$((j+1))
done










