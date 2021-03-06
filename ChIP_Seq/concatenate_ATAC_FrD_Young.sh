#!/bin/bash
cat /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Young/Rep1/FrD_Young_Rep1_peaks.narrowPeak \
/bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Young/Rep2/FrD_Young_Rep2_peaks.narrowPeak \
/bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Young/Rep3/FrD_Young_Rep3_peaks.narrowPeak \
/bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Young/Rep4/FrD_Young_Rep4_peaks.narrowPeak > /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Aged_and_Young_Cancatenated/FrD_Young_Cancatenated.bed

sortBed -i /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Aged_and_Young_Cancatenated/FrD_Young_Cancatenated.bed > /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Aged_and_Young_Cancatenated/FrD_Young_Cancatenated_sorted.bed

mergeBed -i /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Aged_and_Young_Cancatenated/FrD_Young_Cancatenated_sorted.bed -d 100 > /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Aged_and_Young_Cancatenated/FrD_Young_Cancatenated_sorted_merged.bed

subtractBed -a /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Aged_and_Young_Cancatenated/FrD_Young_Cancatenated_sorted_merged.bed -b mm10_blacklist_sloped_5000.bed -A > /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Aged_and_Young_Cancatenated/FrD_Young_Cancatenated_sorted_merged_BLed.bed

