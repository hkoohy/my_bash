#!/bin/bash
# ***************** NOTE *******************
#for some of these commands you need to ask more memory than what is available by default. In particular:
# qsub  -cwd -V -b y -l h_vmem=10G -j y -o H3K4ME3_all_reps ./run_macs2.sh
# ********************* End of Note *************** 


#H3K4ME3_FrBC_Aged merged replicates 
#macs2 callpeak -t /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K4ME3/H3K4ME3_FrBC_Aged_Merged_Sorted_subsampled.bam \
#    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/INPUT/Input_Young_and_Old_Merged_16_Percent_Pooled_cleanedup_sorted_dupremoved.bam# \
#    -g mm \
#    -n H3K4ME3_FrBC_Aged_Merged_Subsampled \
#    -f BAM \
#    --outdir /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K4ME3/H3K4ME3_FrBC_Aged_Merged_all_Reps -p 0.001 --nomodel



#H3K4ME3_FrBC_Young merged  replicates
#macs2 callpeak -t /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K4ME3/H3K4ME3_FrBC_Young_Merged_Sorted.bam \
#    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/INPUT/Input_Young_and_Old_Merged_16_Percent_Pooled_cleanedup_sorted_dupremoved.bam# \
#    -g mm \
#    -n H3K4ME3_FrBC_Young_Merged_Reps \
#    -f BAM \
#    --outdir /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K4ME3/H3K4ME3_FrBC_Young_Merged_all_Reps -p 0.001 --nomodel


########################### bdgcmp function ###########
#macs2 bdgcmp -t /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K4ME3/H3K4ME3_FrBC_Aged_all_Reps/H3K4ME3_FrBC_Aged_all_Reps_treat_pileup.bdg \
#    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K4ME3/H3K4ME3_FrBC_Aged_all_Reps/H3K4ME3_FrBC_Aged_all_Reps_control_lambda.bdg \
#    --outdir /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K4ME3/H3K4ME3_FrBC_Aged_all_Reps \
#    --o-prefix  H3K4ME3_FrBC_Aged_all_Reps\
#    -m logLR -p 0.00001


#macs2 bdgcmp -t /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K4ME3/H3K4ME3_FrBC_Young_all_Reps/H3K4ME3_FrBC_Young_all_Reps_treat_pileup.bdg \
#    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K4ME3/H3K4ME3_FrBC_Young_all_Reps/H3K4ME3_FrBC_Young_all_Reps_control_lambda.bdg \
#    --outdir /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K4ME3/H3K4ME3_FrBC_Young_all_Reps \
#    --o-prefix H3K4ME3_FrBC_Young_all_Reps \
#    -m logLR -p 0.00001

################# end of bdg cmp #####################

#H3K4ME3_FrBC_Aged_Rep1
macs2 callpeak -t /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K4ME3/lane5_old_IP_H3K4me3_CTTGTA_L005_R1_val_1.fq.gz_bowtie2_cleanedup_sorted_dupremoved.bam \
    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/INPUT/Input_Young_and_Old_Merged_16_Percent_Pooled_cleanedup_sorted_dupremoved.bam \
    -g mm \
    -n H3K4ME3_FrBC_Aged_Rep1 \
    -f BAM \
    --outdir /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K4ME3/Aged/Rep1 -p 0.001 --nomodel

#H3K4ME3_FrBC_Aged_Rep2
macs2 callpeak -t /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K4ME3/lane5_H3K4me3-old-2_GCCAAT_L005_R1_val_1.fq.gz_bowtie2_cleanedup_sorted_dupremoved.bam \
    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/INPUT/Input_Young_and_Old_Merged_16_Percent_Pooled_cleanedup_sorted_dupremoved.bam \
    -g mm \
    -n H3K4ME3_FrBC_Aged_Rep2 \
    -f BAM \
    --outdir /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K4ME3/Aged/Rep2 -p 0.001 --nomodel

#H3K4ME3_FrBC_Aged_Rep3
macs2 callpeak -t /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K4ME3/lane6_H3K4me3-old-3_Spike-in_CGATGT_L006_R1_val_1.fq.gz_bowtie2_cleanedup_sorted_dupremoved.bam \
    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/INPUT/Input_Young_and_Old_Merged_16_Percent_Pooled_cleanedup_sorted_dupremoved.bam \
    -g mm \
    -n  H3K4ME3_FrBC_Aged_Rep3\
    -f BAM \
    --outdir /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K4ME3/Aged/Rep3 -p 0.001 --nomodel 

#H3K4ME3_FrBC_Young_Rep1
macs2 callpeak -t /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K4ME3/lane5_young_IP_H3k4me3_GCCAAT_L005_R1_val_1.fq.gz_bowtie2_cleanedup_sorted_dupremoved.bam \
    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/INPUT/Input_Young_and_Old_Merged_16_Percent_Pooled_cleanedup_sorted_dupremoved.bam \
    -g mm \
    -n  H3K4ME3_FrBC_Young_Rep1\
    -f BAM \
    --outdir /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K4ME3/Young/Rep1 -p 0.001 --nomodel

#H3K4ME3_FrBC_Young_Rep2
macs2 callpeak -t /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K4ME3/lane5_H3K4me3-yo-2_ACAGTG_L005_R1_val_1.fq.gz_bowtie2_cleanedup_sorted_dupremoved.bam \
    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/INPUT/Input_Young_and_Old_Merged_16_Percent_Pooled_cleanedup_sorted_dupremoved.bam \
    -g mm \
    -n  H3K4ME3_FrBC_Young_Rep2\
    -f BAM \
    --outdir /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K4ME3/Young/Rep2 -p 0.001 --nomodel

#H3K4ME3_FrBC_Young_Rep3
macs2 callpeak -t /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K4ME3/lane6_H3K4me3-Yo-3_Spike-in_ATCACG_L006_R1_val_1.fq.gz_bowtie2_cleanedup_sorted_dupremoved.bam \
    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/INPUT/Input_Young_and_Old_Merged_16_Percent_Pooled_cleanedup_sorted_dupremoved.bam \
    -g mm \
    -n H3K4ME3_FrBC_Young_Rep3 \
    -f BAM \
    --outdir /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K4ME3/Young/Rep3 -p 0.001 --nomodel
