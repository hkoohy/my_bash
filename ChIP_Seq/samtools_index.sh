#!/bin/bash

#To index bam files in a directory that match the criteria

echo "Hi there, I started indexing your files but it might take a  while!"



for f in /bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/Rag_Knouts/Female/*_sorted.bam
 do 
    echo $f
    output=${f}.bai
    if [ -e $output ]
	then
	echo  "File Exists, skiping"
    else
	echo "Not Exists, indexing "
	samtools index $f 
   fi
done
