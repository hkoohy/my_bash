#!/bin/bash

#chr2:20,100,00-20,200,00
awk '{print $2":"$3"-"$4}' Active_nonfunc.txt > \
Active_nonfunc_samtools_format.txt

for bam_file in *pr_clean*; do
#sort and index bam files
echo $bam_file
samtools sort -T /tmp/tmp_sorted.bam -o ${bam_file%.bam}_sorted.bam $bam_file   
samtools index ${bam_file%.bam}_sorted.bam

#samtools view aln.sorted.bam chr2:20,100,00-20,200,00
(count=1
while read REGIONS
do
    samtools view -hb ${bam_file%.bam}_sorted.bam $REGIONS \
    > ${bam_file%.bam}.${count}.bam

    (( count++ ))
done < Active_nonfunc_samtools_format.txt

)

samtools merge ${bam_file%_*_*_*}_unprc104.V_side.aln.merged.bam ${bam_file%_*_*_*}_unprc104.V_side.aln.bam ${bam_file%.bam}.*.bam

echo ${bam_file%_*_*_*}_unprc104.V_side.aln.bam
echo ${bam_file%.bam}.*.bam

rm ${bam_file%.bam}.*.bam

done
wait
#Merge BAMs
#samtools merge out.bam in1.bam in2.bam in3.bam



