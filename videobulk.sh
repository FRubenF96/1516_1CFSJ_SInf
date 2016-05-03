#!/bin/bash 
# Main
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
