#!/bin/bash

#when headers of bam files are different, multicov function from bedtools throws an error "Bam files could not be opened". The 
#following scrip is used to make the same header for three bam files.

original_bam="/bi/scratch/Hashem/Fraction_BC_VDJseq_final_datasets/Hiseq_datasets_final/Sorted_Hiseq_datasets_final_files/merged_lane5_TGACCA_WT_BC_hiseq_L005_R.bam"
prod_bam="/bi/scratch/Hashem/Fraction_BC_VDJseq_final_datasets/Hiseq_datasets_final/Productive_Nonproductive/Productive/1079_TGACCA_WTBC_pr_clean.V_side.aln_sorted_excluded_Sorted.bam"
nonprod_bam="/bi/scratch/Hashem/Fraction_BC_VDJseq_final_datasets/Hiseq_datasets_final/Productive_Nonproductive/Nonproductive/1079_TGACCA_WTBC_unprc104.V_side.aln.merged_Sorted.bam"
header="/bi/scratch/Hashem/Fraction_BC_VDJseq_final_datasets/Hiseq_datasets_final/header"

#echo ${original_bam}
#echo ${prod_bam}
#echo ${prod_bam%.bam}_New_Header.bam

samtools view -H ${original_bam} > ${header}
echo ${header}
samtools reheader ${header} ${prod_bam} > ${prod_bam%.bam}_New_Header.bam
samtools index ${prod_bam%.bam}_New_Header.bam
samtools reheader ${header} ${nonprod_bam} > ${nonprod_bam%.bam}_New_Header.bam
samtools index ${nonprod_bam%.bam}_New_Header.bam
rm ${header}
rm ${prod_bam}
rm ${nonprod_bam}

