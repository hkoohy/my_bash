#!/bin/bash

cat /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrBC_Aged/FrBC_Aged_Rep1/FrBC_Aged_Rep1_peaks.narrowPeak \
/bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrBC_Aged/FrBC_Aged_Rep2/FrBC_Aged_Rep2_peaks.narrowPeak \
/bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrBC_Aged/FrBC_Aged_Rep3/FrBC_Aged_Rep3_peaks.narrowPeak  \
/bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrBC_Aged/FrBC_Aged_Rep4/FrBC_Aged_Rep4_peaks.narrowPeak \
/bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrBC_Young/FrBC_Young_Rep1/FrBC_Young_Rep1_peaks.narrowPeak \
/bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrBC_Young/FrBC_Young_Rep2/FrBC_Young_Rep2_peaks.narrowPeak \
/bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrBC_Young/FrBC_Young_Rep3/FrBC_Young_Rep3_peaks.narrowPeak \
/bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrBC_Young/FrBC_Young_Rep4/FrBC_Young_Rep4_peaks.narrowPeak >  /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrBC_Aged_and_Young_Cancatenated/FrBC_Aged_and_Young_Cancatenated.bed 


sortBed -i /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrBC_Aged_and_Young_Cancatenated/FrBC_Aged_and_Young_Cancatenated.bed > /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrBC_Aged_and_Young_Cancatenated/FrBC_Aged_and_Young_Cancatenated_sorted.bed

mergeBed -i /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrBC_Aged_and_Young_Cancatenated/FrBC_Aged_and_Young_Cancatenated_sorted.bed -d 100 > /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrBC_Aged_and_Young_Cancatenated/FrBC_Aged_and_Young_Cancatenated_sorted_merged.bed 

subtractBed -a /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrBC_Aged_and_Young_Cancatenated/FrBC_Aged_and_Young_Cancatenated_sorted_merged.bed -b mm10_blacklist_sloped_5000.bed -A > /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrBC_Aged_and_Young_Cancatenated/FrBC_Aged_and_Young_Cancatenated_sorted_merged_BLed.bed