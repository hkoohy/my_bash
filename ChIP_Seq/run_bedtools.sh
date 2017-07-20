#!/bin/bash

#Note: the authors recommend to use fragments size 0 for the paired-end sequences 
#Note2: core in your qsup must be equal to --nproc in this perl code
#Note3: to run on a node: qsub -cwd -l h_vmem=4G -pe cores 4 -V -o h3k4me3_diffreps.output -e h3k4me3_diffreps.err run_diffreps.sh
echo "Started diffreps, this may take a while to finish. The perl script sits in /bi/apps/perl_modules/bin/"






bedtools coverage -abam /bi/group/sysgen/Hashem/Bryony_ATAC_SEQ/Bam_Files_mm9/lane5_RAG_FrBC_AGGCAGAA_L005_R1_val_1.fq.gz_bowtie2_sorted.bam -b /bi/home/koohyh//Python_Scripts/my_python/ChIP_Data_Analysis/testing.bed  -d > depth_testing_2.txt

echo "Job finished\n"