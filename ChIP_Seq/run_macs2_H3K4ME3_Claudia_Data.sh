#!/bin/bash
# ***************** NOTE *******************
#for some of these commands you need to ask more memory than what is available by default. In particular:
# qsub  -cwd -V -b y -l h_vmem=10G -j y -o H3K4ME3_all_reps ./run_macs2_.sh
# ********************* End of Note *************** 

#H3K4ME3_FrD_Young_Merged 
macs2 callpeak -t /bi/group/sysgen/Hashem/Claudia_H3K4ME3/H3K4ME3_frD/H3K4ME3_frD_Young/H3K4ME3_FrD_Young_merged_rep1_2.bam \
    -c /bi/group/sysgen/Hashem/Claudia_H3K4ME3/H3K4ME3_frD/H3K4ME3_frD_Young/Input_FrD_Young_sorted.bam \
    -g mm \
    -n  H3K4ME3_FrD_Young_Merged\
    -f BAM \
    --outdir /bi/group/sysgen/Hashem/Claudia_H3K4ME3/MACS_Output/H3K4ME3_frD_Young -p 0.001 --nomodel

#H3K4ME3_FrD_Aged_Merged
macs2 callpeak -t /bi/group/sysgen/Hashem/Claudia_H3K4ME3/H3K4ME3_frD/H3K4ME3_frD_Aged/H3K4ME3_frD_Aged_Merged_Rep1_2.bam \
    -c /bi/group/sysgen/Hashem/Claudia_H3K4ME3/H3K4ME3_frD/H3K4ME3_frD_Aged/Input_FrD_Aged_sorted.bam \
    -g mm \
    -n H3K4ME3_FrD_Aged_Merged \
    -f BAM \
    --outdir /bi/group/sysgen/Hashem/Claudia_H3K4ME3/MACS_Output/H3K4ME3_frD_Aged -p 0.001 --nomodel
