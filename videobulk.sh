#!/bin/bash

# Script to convert all video files from a directory (parameter) into mp4 format file

# Sanity checks ?
# ...

# Main
#Sanity checks
if [ $# -eq 0 ]
then
directory=$PWD
elif [ -d $1 ]
then
directory=$1
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
	namefile=${videofile: -3}
	mencoder $videofile -o namefile.mp4 -oac mp3lame -ovc lavc
	
done < videofiles
rm videofiles
	
exit 0