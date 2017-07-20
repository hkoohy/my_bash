#!/bin/bash

#Note: the authors recommend to use fragments size 0 for the paired-end sequences 
#Note2: core in your qsup must be equal to --nproc in this perl code
#Note3: to run on a node: qsub -cwd -l h_vmem=10G -pe cores 4 -V -o h3k27me3_diffreps.output -e h3k27me3_diffreps.err run_diffreps_H3K27ME3.sh
echo "Started diffreps, this may take a while to finish. The perl script sits in /bi/apps/perl_modules/bin/"
perl /bi/apps/perl_modules/bin/diffReps.pl \
--control /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/Bed_Files/H3K27ME3/lane4_H3K27me3-yo-2_CAGATC_L004_R1_val_1.fq.gz_bowtie2_cleanedup_sorted_dupremoved.bed \
/bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/Bed_Files/H3K27ME3/lane7_H3K27me3-Yo-3_Spike-in_TAGCTT_L007_R1_val_1.fq.gz_bowtie2_cleanedup_sorted_dupremoved.bed \
/bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/Bed_Files/H3K27ME3/lane3397_AGTCAA_Yo-H3K27me3-BC-nb4_L008_R1_val_1.fq.gz_bowtie2_mapped_dupremoved.bed \
/bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/Bed_Files/H3K27ME3/lane3436_AGTTCC_Yo-H3K27me3-BC-nb5_L001_R1_val_1.fq.gz_bowtie2_mapped_sorted_dupremoved.bed \
--treatment /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/Bed_Files/H3K27ME3/lane4_H3K27me3-old-2_ACTTGA_L004_R1_val_1.fq.gz_bowtie2_cleanedup_sorted_dupremoved.bed \
/bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/Bed_Files/H3K27ME3/lane7_H3K27me3-old-3_Spike-in_GGCTAC_L007_R1_val_1.fq.gz_bowtie2_cleanedup_sorted_dupremoved.bed \
/bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/Bed_Files/H3K27ME3/lane3436_GTGGCC_Old-H3K27me3-BC-nb5_L001_R1_val_1.fq.gz_bowtie2_mapped_sorted_dupremoved.bed \
/bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/Bed_Files/H3K27ME3/lane3397_ATGTCA_Old-H3K27me3-BC-nb4_L008_R1_val_1.fq.gz_bowtie2_mapped_dupremoved.bed \
--chrlen /bi/scratch/Hashem/Genome_Sizes/mm10.genome.size \
--report /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/DiffReps_Results/H3K27ME3/H3K27ME3_Aged_vs_Young \
--btr /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/INPUT/Input_Young_and_Old_Merged_16_Percent_Pooled_cleanedup_sorted_dupremoved.bed \
--bco /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/INPUT/Input_Young_and_Old_Merged_16_Percent_Pooled_cleanedup_sorted_dupremoved.bed \
--nproc 4 \
--nsd b \
--bkg 2.0 \
--pval 0.001 \
--nohs \
--window 2000 \


echo "Job finished\n"
