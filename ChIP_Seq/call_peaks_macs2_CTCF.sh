#!/bin/bash

#For some of these commands you need to ask more memory than what is available by default. In particular:
#qsub  -cwd -V -b y -l h_vmem=10G -j y -o H3K27AC_Peaks.out ./call_peaks_macs2_CTCF.sh
# ********************* End of Note *************** 


################FrD ###########
#CTCF FrD Young Rep1
macs2 callpeak -t /bi/group/sysgen/Hashem/Claudia_Data/FrD/CTCF_FrD_Young_Rep1.bam \
-c /bi/group/sysgen/Hashem/Claudia_Data/FrD/CTCF_Input_FrD_Young_Rep1.bam \
-g mm \
-n CTCF_FrD_Young_Rep1 -f BAM \
--outdir /bi/group/sysgen/Hashem/Claudia_Data/MACS2_OUTPUTS/FrD/Young/Rep1 \
-p 0.001 --nomodel 

##CTCF FrD Young Rep2
macs2 callpeak -t /bi/group/sysgen/Hashem/Claudia_Data/FrD/CTCF_FrD_Young_Rep2.bam \
-c /bi/group/sysgen/Hashem/Claudia_Data/FrD/CTCF_Input_FrD_Young_Rep2.bam \
-g mm \
-n CTCF_FrD_YR2 -f BAM \
--outdir /bi/group/sysgen/Hashem/Claudia_Data/MACS2_OUTPUTS/FrD/Young/Rep2 \
-p 0.001 --nomodel 

#CTCF FrD Old Rep1
macs2 callpeak -t /bi/group/sysgen/Hashem/Claudia_Data/FrD/CTCF_FrD_Old_Rep1.bam \
-c /bi/group/sysgen/Hashem/Claudia_Data/FrD/CTCF_Input_FrD_Old_Rep1.bam \
-g mm \
-n CTCF_FrD_AR1 -f BAM \
--outdir /bi/group/sysgen/Hashem/Claudia_Data/MACS2_OUTPUTS/FrD/Old/Rep1 \
-p 0.001 --nomodel 

########CTCF FrD Old Rep2
macs2 callpeak -t /bi/group/sysgen/Hashem/Claudia_Data/FrD/CTCF_FrD_Old_Rep2.bam \
-c /bi/group/sysgen/Hashem/Claudia_Data/FrD/CTCF_Input_FrD_Old_Rep2.bam \
-g mm \
-n CTCF_FrD_AR2 -f BAM \
--outdir /bi/group/sysgen/Hashem/Claudia_Data/MACS2_OUTPUTS/FrD/Old/Rep2 \
-p 0.001 --nomodel

