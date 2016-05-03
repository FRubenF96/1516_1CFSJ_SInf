#!/bin/bash 
# Main
<<<<<<< HEAD
 #Sanity checks
-if [ S# -eq 0 ]
+if [ $# -eq 0 ]
 then
 directory=$PWD
 elif [ -d $1 ]
 then
 directory =$1
 else
 echo "sorry. $1 is not a directory"
-fi code
-
+fi 
+echo "gggggggg"
 ls -1 $1*.avi > videofiles
 
-while videofile
+while read videofile
 do
 	lengthname=${#videofile}
-	namefile=${videofile;0;$lengthname-4}
-	mencoder $videofile -o namefile.mp4 -oac mp3lame -ovc lavc -of mp4
+	namefile=${videofile: -3}
+	mencoder $videofile -o namefile.mp4 -oac mp3lame -ovc lavc
 
 done < videofiles
 rm videofiles
=======
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
>>>>>>> 81c3158ebe988b85c76629a13a674502401d526c
