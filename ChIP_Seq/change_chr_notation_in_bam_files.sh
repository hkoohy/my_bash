#!/bin/bash

path=/bi/group/sysgen/Hashem/Claudia_H3K27AC/Bam_Files/
# for file in ${path}*.bam;
# do
#     echo $file
# done

#_A4Reps_sorted.bam

for file in ${path}*_sorted.bam; 
do filename=`echo $file | cut -d "." -f 1`; samtools view -H $file | sed -e 's/SN:\([0-9XY]\)/SN:chr\1/' -e 's/SN:MT/SN:chrM/' | samtools reheader - $file > ${filename}_chr.bam;done