#!/bin/bash


#To sort bam files using picard
for f in *.bam
do
    Input=${f}
    echo "sorting file: "${Input}
    ext_removed=${Input%.bam}
    output_fname=${ext_removed}_picard_sorted.bam
    temp_dir=/bi/scratch/Hashem/tmp/
    java -Xmx2g -jar /bi/apps/picard/1.88/SortSam.jar I=${Input} O=${output_fname} TMP_DIR=${temp_dir} SORT_ORDER=coordinate
    echo  "***********************************"
    
done
