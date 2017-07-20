#!/bin/bash


#H3K4ME3_FrBC_Aged merged replicates 
#macs -t /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K4ME3/H3K4ME3_FrBC_Aged_Merged_Sorted_subsampled.bam \
#    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/INPUT/Input_Young_and_Old_Merged_16_Percent_Pooled_cleanedup_sorted_dupremoved.bam \
#    -g mm \
#    -n FrBC_Aged_H3K4ME3 \
#    -f BAM \
#    -p 0.001 --nomodel



#H3K4ME3_FrBC_Young merged  replicates
macs -t /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K4ME3/H3K4ME3_FrBC_Young_Merged_Sorted.bam \
    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/INPUT/Input_Young_and_Old_Merged_16_Percent_Pooled_cleanedup_sorted_dupremoved.bam \
    -g mm \
    -n FrBC_Young_H3K4ME3 \
    -f BAM \
    -p 0.001 --nomodel
