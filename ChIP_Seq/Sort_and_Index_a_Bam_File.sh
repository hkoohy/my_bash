#!/bin/bash
input_fname=$1
output_fname=${input_fname%.bam}_Sorted.bam
echo ${input_fname}
echo ${output_fname}
samtools sort -o ${output_fname} ${input_fname}
samtools index ${output_fname}