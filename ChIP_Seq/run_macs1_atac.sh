#!/bin/bash

#For Andrew mm10

 macs -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrBC_Aged_Rep1_2_subsampled.bam \
 -n FrBC_Aged_Subsampled_R_1_2\
 -f BAM -g mm --nomodel -p 0.001 \


macs  -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrBC_Young_Rep1_2.bam \
-n FrBC_Young_Rep_1_2 \
-f BAM -g mm --nomodel -p 0.001 \

