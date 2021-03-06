#!/bin/bash

#Note: the authors recommend to use fragments size 0 for the paired-end sequences 
#Note2: core in your qsup must be equal to --nproc in this perl code
#Note3: to run on a node: qsub -cwd -l h_vmem=4G -pe cores 4 -V -o h3k4me3_diffreps.output -e h3k4me3_diffreps.err run_diffreps.sh
echo "Started diffreps, this may take a while to finish. The perl script sits in /bi/apps/perl_modules/bin/"
perl /bi/apps/perl_modules/bin/diffReps.pl \
--control /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K4ME3/lane6_H3K4me3-Yo-3_Spike-in_ATCACG_L006_R1_val_1.fq.gz_bowtie2_cleanedup_sorted_dupremoved_with_chr.bed\
/bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K4ME3/lane5_H3K4me3-yo-2_ACAGTG_L005_R1_val_1.fq.gz_bowtie2_cleanedup_sorted_dupremoved_2.bed \
/bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K4ME3/lane5_young_IP_H3k4me3_GCCAAT_L005_R1_val_1.fq.gz_bowtie2_cleanedup_sorted_dupremoved_2.bed \
--treatment /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K4ME3/lane6_H3K4me3-old-3_Spike-in_CGATGT_L006_R1_val_1.fq.gz_bowtie2_cleanedup_sorted_dupremoved_with_chr.bed \
/bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K4ME3/lane5_H3K4me3-old-2_GCCAAT_L005_R1_val_1.fq.gz_bowtie2_cleanedup_sorted_dupremoved_2.bed \
/bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K4ME3/lane5_old_IP_H3K4me3_CTTGTA_L005_R1_val_1.fq.gz_bowtie2_cleanedup_sorted_dupremoved_2.bed \
--chrlen /bi/scratch/Hashem/Genome_Sizes/mm10.chrom.sizes \
--report /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/DiffReps_Results/H3K4ME3/H3k4me3_Young_as_Control \
--btr /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/INPUT/Input_Young_and_Old_Merged_16_Percent_Pooled_cleanedup_sorted_dupremoved_2.bed \
--bco /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/INPUT/Input_Young_and_Old_Merged_16_Percent_Pooled_cleanedup_sorted_dupremoved_2.bed \
--frag 0 \
--nproc 4\
--nsd s\
--bkg 2.0


echo "Job finished\n"
