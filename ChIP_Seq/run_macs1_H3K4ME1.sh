#!/bin/bash

macs -t /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K4ME1/H3K4ME1_FrBC_Old_Merged_3_reps.bam \
    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/INPUT/Input_Young_and_Old_Merged_16_Percent_Pooled_cleanedup_sorted_dupremoved.bam \
    -g mm \
    -n FrBC_Aged_H3K4ME1 \
    -f BAM \
     -p 0.001 --nomodel 


macs -t /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K4ME1/H3K4ME1_FrBC_Young_Merged_3_reps.bam \
    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/INPUT/Input_Young_and_Old_Merged_16_Percent_Pooled_cleanedup_sorted_dupremoved.bam \
    -g mm \
    -n FrBC_Young_H3K4ME1\
    -f BAM \
     -p 0.001 --nomodel \
