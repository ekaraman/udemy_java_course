#!/bin/bash
SAVEIFS=$IFS
IFS=$(echo -en "\n\b")

for i in `ls -1d s*`
do 
	cd $i
	pwd
	for j in * 
	do 
		echo "Start Directory $i zipfile $j"
		dir_name=`echo $j | sed 's/.zip//'`
		echo $dir_name
		mkdir $dir_name
		unzip $j -d ${dir_name}
		rm -rf $j
		echo "End of Directory $i zipfile $j"
	done
	cd ..
done
