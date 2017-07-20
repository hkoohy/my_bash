#!/bin/bash

#To sort bam files in a directory that match the criteria
# to run this script as qsup job do:
# qsub -cwd -l h_vmem=20G -o Sort_Index_A.output ./samtools_index_bams.sh

echo "Hi there, I started indexing your files but it might take a  while!"



for f in /bi/group/sysgen/Hashem/Claudia_H3K4ME3/H3K4ME3_frD/H3K4ME3_frD_Young/*sorted.bam 
 do 
    #echo $f
    output=${f}.bai
    if [ -e $output ]
	then
	echo  "file **** " $output " ***** Exists, skiping"
    else
	echo "file **** " $f " **** Not Exists, indexing "
	samtools index $f
   fi
done
