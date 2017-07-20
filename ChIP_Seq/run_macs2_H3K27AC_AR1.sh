#!/bin/bash

#For some of these commands you need to ask more memory than what is available by default. In particular:
#qsub  -cwd -V -b y -l h_vmem=10G -j y -o H3K27AC_Peaks.out ./run_macs2_H3K27AC.sh
# ********************* End of Note *************** 

bams_dir=/bi/group/sysgen/Hashem/Claudia_H3K27AC/Bam_Files/
output_dir=/bi/group/sysgen/Hashem/Claudia_H3K27AC/MACS_Outputs/
Aged_Input_File=/bi/group/sysgen/Hashem/Claudia_H3K27AC/Bam_Files/lane5362_CGATGT_Input_D_old2_L003_R1_val_1_GRCm38_bowtie2.bam 
Young_Input_File=/bi/group/sysgen/Hashem/Claudia_H3K27ME3/Bam_Files/lane5363_ATCACG_Input_D_young1_L004_R1_val_1_GRCm38_bowtie2.bam




macs2 callpeak -t ${bams_dir}lane5362_GCCAAT_K27ac_old1_L003_R1_val_1_GRCm38_bowtie2.bam \
--outdir ${output_dir}FrD_H3K27AC_AR1 \
-c ${Aged_Input_File} \
-g mm --broad -n FrD_H3K27AC_AR1 -f BAM -q 0.01 --broad-cutoff 0.05 --nomodel --extsize 146
