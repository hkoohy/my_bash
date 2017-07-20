#!/bin/bash
# ***************** NOTE *******************
#for some of these commands you need to ask more memory than what is available by default. In particular:
#  qsub  -cwd -V -b y -l h_vmem=10G -j y -o H3K4ME3_all_reps ./run_macs2.sh
# ********************* End of Note *************** 

#Aged 

macs2 callpeak -t /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K4ME1/lane5_H3K4me1-oldBC-1_GCCAAT_L005_R1_val_1.fq.gz_bowtie2_cleanedup_sorted_dupremoved.bam \
    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/INPUT/Input_Young_and_Old_Merged_16_Percent_Pooled_cleanedup_sorted_dupremoved.bam \
    -g mm \
    -n H3K4ME1_FrBC_Aged_Rep1 \
    -f BAM \
    --outdir /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K4ME1/Aged/Rep1\
    -p 0.001 --nomodel



macs2 callpeak -t /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K4ME1/lane3438_TAGCTT_Old-H3K4me1-BC-nb3_L003_R1_val_1.fq.gz_bowtie2_cleanedup_sorted.bam \
    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/INPUT/Input_Young_and_Old_Merged_16_Percent_Pooled_cleanedup_sorted_dupremoved.bam \
    -g mm \
    -n H3K4ME1_FrBC_Aged_Rep2 \
    -f BAM \
    --outdir /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K4ME1/Aged/Rep2 -p 0.001 --nomodel


macs2 callpeak -t /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K4ME1/lane3437_GGCTAC_Old-H3K4me1-BC-nb2__L002_R1_val_1.fq.gz_bowtie2_cleanedup_sorted.bam \
    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/INPUT/Input_Young_and_Old_Merged_16_Percent_Pooled_cleanedup_sorted_dupremoved.bam \
    -g mm \
    -n H3K4ME1_FrBC_Aged_Rep3 \
    -f BAM \
    --outdir /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K4ME1/Aged/Rep3 -p 0.001 --nomodel


# Young

macs2 callpeak -t /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K4ME1/lane5_H3K4me1-yoBC-1_TGACCA_L005_R1_val_1.fq.gz_bowtie2_cleanedup_sorted_dupremoved.bam \
    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/INPUT/Input_Young_and_Old_Merged_16_Percent_Pooled_cleanedup_sorted_dupremoved.bam \
    -g mm \
    -n H3K4ME1_FrBC_Young_Rep1 \
    -f BAM \
    --outdir /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K4ME1/Young/Rep1 -p 0.001 --nomodel


macs2 callpeak -t /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K4ME1/lane3438_ATCACG_Yo-H3K4me1-BC-nb3_L003_R1_val_1.fq.gz_bowtie2_cleanedup_sorted.bam \
    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/INPUT/Input_Young_and_Old_Merged_16_Percent_Pooled_cleanedup_sorted_dupremoved.bam \
    -g mm \
    -n H3K4ME1_FrBC_Young_Rep2 \
    -f BAM \
    --outdir /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K4ME1/Young/Rep2 -p 0.001 --nomodel


macs2 callpeak -t /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K4ME1/lane3437_CGATGT_Yo-H3K4me1-BC-nb2__L002_R1_val_1.fq.gz_bowtie2_cleanedup_sorted.bam \
    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/INPUT/Input_Young_and_Old_Merged_16_Percent_Pooled_cleanedup_sorted_dupremoved.bam \
    -g mm \
    -n H3K4ME1_FrBC_Young_Rep3 \
    -f BAM \
    --outdir /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K4ME1/Young/Rep3\
     -p 0.001 --nomodel




############### Merged Aged and Young ######### 

#macs2 callpeak -t /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K4ME1/H3K4ME1_FrBC_Old_Merged_3_reps.bam \
#    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/INPUT/Input_Young_and_Old_Merged_16_Percent_Pooled_cleanedup_sorted_dupremoved.bam \
#    -g mm \
#    -n H3K4ME1_BC_Aged_Merged_3_Reps \
#    -f BAM \
#    --outdir /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K4ME1/Aged_3_Reps_Merged -p 0.001 --nomodel


#macs2 callpeak -t /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K4ME1/H3K4ME1_FrBC_Young_Merged_3_reps.bam \
#    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/INPUT/Input_Young_and_Old_Merged_16_Percent_Pooled_cleanedup_sorted_dupremoved.bam \
#    -g mm \
#    -n H3K4ME1_BC_Young_Merged_3_Reps \
#    -f BAM \
#    --outdir /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K4ME1/Young_3_Reps_Merged -p 0.001 --nomodel \



####################### bdgcmp ############################
#macs2 bdgcmp -t /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K4ME1/Aged/H3K4ME1_BC_Aged_treat_pileup.bdg \
#    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K4ME1/Aged/H3K4ME1_BC_Aged_control_lambda.bdg \
#    --outdir /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K4ME1/Aged_BDG \
#    --o-prefix H3K4ME1_BC_Aged \
#    -m logLR -p 0.00001


#macs2 bdgcmp -t /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K4ME1/Young/H3K4ME1_BC_Young_treat_pileup.bdg \
#    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K4ME1/Young/H3K4ME1_BC_Young_control_lambda.bdg \
#    --outdir /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K4ME1/Young_BDG \
#    --o-prefix H3K4ME1_BC_Young \
#    -m logLR -p 0.00001
