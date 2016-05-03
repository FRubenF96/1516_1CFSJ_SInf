#!/bin/bash
set -x
echo "1) Mencoder video"
echo "2) Rename video"

echo "Elija opcion:"
read opcion
case $opcion in

1 )
if [ $# -eq 0 ]
 then
 directory=$PWD
 elif [ -d $1 ]
 then
 directory =$1
 else
 echo "sorry. $1 is not a directory"
fi 

Lengths=${#directory}
Lastchar=${directory:$Lengths-1:1}
if [ "$Lastchar" = "/" ]
then
	directory=$directory
else
	directory="$directory/"
fi

ls -1 $directory*.avi > videofiles

while read videofile
	do
	lengthname=${#videofile}
	namefile=${videofile:-3}
	mencoder $videofile -o namefile.mp4 -oac mp3lame -ovc lavc

done < videofiles
rm videofiles
exit 0
;;

2 ) read Name
Name=$Name".mp4"
mv namefile.mp4 $Name
exit 0
;;

* ) echo "Only 1-2 options";;
esac
set +x
exit 0
