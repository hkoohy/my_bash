#!/bin/bash

#For some of these commands you need to ask more memory than what is available by default. In particular:
#qsub  -cwd -V -b y -l h_vmem=10G -j y -o H3K27AC_Peaks_YR1.out ./call_peaks_macs1_H3K27AC.sh
# ********************* End of Note *************** 

bams_dir=/bi/group/sysgen/Hashem/Claudia_H3K27AC/Bam_Files/
output_dir=/bi/group/sysgen/Hashem/Claudia_H3K27AC/MACS_Outputs/
Aged_Input_File=/bi/group/sysgen/Hashem/Claudia_H3K27AC/Bam_Files/lane5362_CGATGT_Input_D_old2_L003_R1_val_1_GRCm38_bowtie2.bam 
Young_Input_File=/bi/group/sysgen/Hashem/Claudia_H3K27ME3/Bam_Files/lane5363_ATCACG_Input_D_young1_L004_R1_val_1_GRCm38_bowtie2.bam

## YR1
macs -t ${bams_dir}lane5362_ACTTGA_K27ac_young1_L003_R1_val_1_GRCm38_bowtie2.bam \
-c ${Young_Input_File} \
-f BAM -g mm -n FrD_H3K27AC_YR1 --nomodel   -m 5,50 -p 0.1 


### YR2

macs -t ${bams_dir}lane5362_GTGGCC_K27ac_young2_L003_R1_val_1_GRCm38_bowtie2.bam \
-c ${Young_Input_File} \
-f BAM -g mm -n FrD_H3K27AC_YR2 --nomodel   -m 5,50 -p 0.1 



### AR1
macs -t ${bams_dir}lane5362_GCCAAT_K27ac_old1_L003_R1_val_1_GRCm38_bowtie2.bam \
-c ${Aged_Input_File} \
-f BAM -g mm -n FrD_H3K27AC_AR1 --nomodel   -m 5,50 -p 0.1 


##Ar2
macs -t ${bams_dir}lane5362_TAGCTT_K27ac_old2_L003_R1_val_1_GRCm38_bowtie2.bam \
-c ${Aged_Input_File} \
-f BAM -g mm -n FrD_H3K27AC_AR2  --nomodel   -m 5,50 -p 0.1 
