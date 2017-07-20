#!/bin/bash

#Note: the authors recommend to use fragments size 0 for the paired-end sequences 
#Note2: core in your qsup must be equal to --nproc in this perl code
#Note3: to run on a node: qsub -cwd -l h_vmem=10G -pe cores 4 -V -o FrBC_ATAC.output -e FrBC_ATAC.err run_diffreps_for_atac.sh
echo "Started diffreps, this may take a while to finish. The perl script sits in /bi/apps/perl_modules/bin/"
perl /bi/apps/perl_modules/bin/diffReps.pl \
--treatment \
/bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Beds_from_Bams/lane2_Aged_FrBC_ATAC-Seq_replc1_TAAGGCGA_TAGATCGC_L002_R1_val_1.bwa_subsampled_sorted.bed \
/bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Beds_from_Bams/lane2_Aged_FrBC_ATAC-Seq_replc2_CGTACTAG_TAGATCGC_L002_R1_val_1.bwa_subsampled_sorted.bed \
--control \
/bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Beds_from_Bams/lane2_Young_FrBC_ATAC-Seq_replc1_AGGCAGAA_TAGATCGC_L002_R1_val_1.bwa_sorted.bed \
/bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Beds_from_Bams/lane2_Young_FrBC_ATAC-Seq_replc2_TCCTGAGC_TAGATCGC_L002_R1_val_1.bwa_sorted.bed \
--chrlen /bi/scratch/Hashem/Genome_Sizes/mm10.chrom.sizes_for_diffreps.txt \
--report /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/DiffReps_Reports/FrBC_Aged_Subsampled/FrBC \
--nproc 4\
--nsd s\
--bkg 2.0 \
--pval 0.0001 \



echo "Job finished\n"
#--chrlen /bi/scratch/Hashem/Genome_Sizes/mm9.chrom.sizes_v2 \
