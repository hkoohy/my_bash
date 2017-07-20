#!/bin/bash
#qsub  -cwd -V -b y -l h_vmem=10G -j y -o your_input.out ./your_file.sh
bam_fname=$1
sorted_bam_fname=${bam_fname%.bam}_sorted.bam
samtools sort ${bam_fname} -o ${sorted_bam_fname}
samtools index ${sorted_bam_fname}