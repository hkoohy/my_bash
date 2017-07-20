#!/bin/bash

# To remove duplicates from our bam files (and write statistics into a seperate file)

for f in *.bam
do 
    Input=${f}
    echo "removing duplicates from :" ${f}
    ext_removed_fname=${Input%.bam}
    Output_fname=${ext_removed}_picard_duprm.bam
    stat_fname=${ext_removed}_picard_duprm.txt
    java -Xmx2g -jar /bi/apps/picard/1.88/MarkDuplicates.jar \
	INPUT=${Input} \
	OUTPUT=${Output_fname} \
	METRICS_FILE=${stat_fname} \
	REMOVE_DUPLICATES=true
done