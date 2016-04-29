#!/bin/bash

# Script to convert all video files from a directory (parameter) into mp4 format file

# Sanity checks ?
# ...

# Main
#!/bin/bash
echo "1) Transforma video"
echo "2) Renombrar video"

echo "Elija opcion:"
read opcion
case $opcion in

1 ) if [ $# -eq 0 ]
	then
	directory=$PWD
	elif [ -d $1 ]
	then
	directory =$1
	else
	echo "sorry. $1 is not a directory"
fi 

ls -1 $1*.avi > videofiles

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

* ) echo "Opciones de 1 a 2 solamente";;
esac 
