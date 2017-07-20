#!/bin/bash
#qsub  -cwd -V -b y -l h_vmem=10G -j y -o your_input.out ./your_file.sh
path=/bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrD_ATAC_Dan/
output_fname=${path}/FrD_ATAC_Aged.bam
bam1=${path}lane4980_CAGAGAGG_AD5_L006_R1_val_1_GRCm38_bowtie2_MT_removed_Sorted.bam
bam2=${path}lane4981_CGAGGCTG_AD6_L007_R1_val_1_GRCm38_bowtie2_MT_removed_Sorted.bam
bam3=${path}lane5148_TAGGCATG_AD7_L001_R1_val_1_GRCm38_bowtie2_MT_removed_Sorted.bam
bam4=${path}lane5151_AGGCAGAA_AD8_L004_R1_val_1_GRCm38_bowtie2_MT_removed_Sorted.bam

samtools merge ${output_fname} ${bam1} ${bam2} ${bam3} ${bam4}