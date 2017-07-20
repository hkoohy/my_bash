#!/bin/bash

#In Jeremy's data there are a lot of duplicated reads. This is to deduplicate bam files. Remove all but the one with the best score.

echo "Hi there"

for f in /bi/group/sysgen/Hashem/Jeremy_Data/Replicate_3/*_cleanedup_sorted.bam
 do
    echo "Checking file:==>" ${f}
    ext_removed=${f%.bam}
    output_fname=${ext_removed}_dupremoved.bam
    if [ -e $output_fname ]
	then
	echo "duplicated file exists, skipping!" 
	else
	echo "Not deduplicated, deduplicating now:  " ${output_fname}
	samtools rmdup ${f} ${output_fname}
     fi
    echo "*************************************"
 done


