#!/bin/bash

# run as qsub job:
#qsub -cwd -l h_vmem=10G -V -j y -o FrBC_YBC7 -N RM_MT -m eas -M hashem.koohy@babraham.ac.uk ./remove_mt_from_bams.sh
bam_fname='/bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrD_ATAC_Dan/lane4980_AGGCAGAA_YD5_L006_R1_val_1_GRCm38_bowtie2.bam'
output_fname=${bam_fname%.bam}_MT_removed.bam
chr_fname='/bi/group/sysgen/Hashem/mm10_chrom_sizes.bed'
echo ${bam_fname}
echo ${output_fname}
echo ${chr_fname}

bedtools intersect -abam ${bam_fname} -b ${chr_fname} > ${output_fname}