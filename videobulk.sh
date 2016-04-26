#!/bin/bash 

# Script to convert all video files from a directory (parameter) into mp4 format file

# Sanity checks ?
# ...

# Main
#Sanity checks

# I used set-x and set+x to debug the code
set -x
if [ S# -eq 0 ]
then
directory=$PWD
elif [ -d $1 ]
then
directory =$1
else
echo "sorry. $1 is not a directory"
fi code

ls -1 $1*.avi > videofiles

while videofile
do
	lengthname=${#videofile}
	namefile=${videofile;0;$lengthname-4}
	mencoder $videofile -o namefile.mp4 -oac mp3lame -ovc lavc -of mp4

done < videofiles
set +x
rm videofiles
