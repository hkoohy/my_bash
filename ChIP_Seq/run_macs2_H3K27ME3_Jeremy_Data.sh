#!/bin/bash
# ***************** NOTE *******************
#for some of these commands you need to ask more memory than what is available by default. In particular:
# qsub  -cwd -V -b y -l h_vmem=10G  -o H3K27ME3_merged_reps.output -e  H3K27ME3_merged_reps.err ./run_macs2_H3K27ME3_Jeremy_Data.sh
# ********************* End of Note *************** 

## From Merged data: all three replicates have been merged and then the peaks have called on merged data

#macs2 callpeak -t  /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K27ME3/H3K27ME3_FrBC_Aged_Merged_Sorted_Subsampled.bam \
#    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/INPUT/Input_Young_and_Old_Merged_16_Percent_Pooled_cleanedup_sorted_dupremoved.bam \
#    -g mm \
#    -n H3K27ME3_FrBC_Aged_Merged_Data \
#    -f BAM -p 0.01 --nomodel  --broad --broad-cutoff 0.01\
#    --outdir /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K27ME3/H3K27ME3_FrBC_Aged_Merged_Data




#macs2 callpeak -t  /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K27ME3/H3K27ME3_FrBC_Young_Merged_Sorted.bam \
#    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/INPUT/Input_Young_and_Old_Merged_16_Percent_Pooled_cleanedup_sorted_dupremoved.bam \
#    -g mm \
#    -n H3K27ME3_FrBC_Young_Merged_Data \
#    -f BAM  -p 0.01 --nomodel --broad --broad-cutoff 0.01\
#    --outdir /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K27ME3/H3K27ME3_FrBC_Young_Merged_Data


############## Aged replicates ##############



macs2 callpeak -t  /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K27ME3/lane4_H3K27me3-old-2_ACTTGA_L004_R1_val_1.fq.gz_bowtie2_cleanedup_sorted_dupremoved.bam \
    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/INPUT/Input_Young_and_Old_Merged_16_Percent_Pooled_cleanedup_sorted_dupremoved.bam \
    -g mm \
    -n H3K27ME3_FrBC_Aged_Rep1 \
    -f BAM -p 0.01 --nomodel  --broad --broad-cutoff 0.01\
    --outdir /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K27ME3/H3K27ME3_FrBC_Aged_Merged_Data/Aged/Rep1

macs2 callpeak -t  /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K27ME3/lane7_H3K27me3-old-3_Spike-in_GGCTAC_L007_R1_val_1.fq.gz_bowtie2_cleanedup_sorted_dupremoved.bam \
    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/INPUT/Input_Young_and_Old_Merged_16_Percent_Pooled_cleanedup_sorted_dupremoved.bam \
    -g mm \
    -n H3K27ME3_FrBC_Aged_Rep2 \
    -f BAM -p 0.01 --nomodel  --broad --broad-cutoff 0.01\
    --outdir /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K27ME3/H3K27ME3_FrBC_Aged_Merged_Data/Aged/Rep2


macs2 callpeak -t  /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K27ME3/lane3397_ATGTCA_Old-H3K27me3-BC-nb4_L008_R1_val_1.fq.gz_bowtie2_mapped_dupremoved.bam \
    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/INPUT/Input_Young_and_Old_Merged_16_Percent_Pooled_cleanedup_sorted_dupremoved.bam \
    -g mm \
    -n H3K27ME3_FrBC_Aged_Rep3 \
    -f BAM -p 0.01 --nomodel  --broad --broad-cutoff 0.01\
    --outdir /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K27ME3/H3K27ME3_FrBC_Aged_Merged_Data/Aged/Rep3


macs2 callpeak -t  /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K27ME3/lane3436_GTGGCC_Old-H3K27me3-BC-nb5_L001_R1_val_1.fq.gz_bowtie2_mapped_sorted_dupremoved.bam \
    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/INPUT/Input_Young_and_Old_Merged_16_Percent_Pooled_cleanedup_sorted_dupremoved.bam \
    -g mm \
    -n H3K27ME3_FrBC_Aged_Rep4 \
    -f BAM -p 0.01 --nomodel  --broad --broad-cutoff 0.01\
    --outdir /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K27ME3/H3K27ME3_FrBC_Aged_Merged_Data/Aged/Rep4


##### Young Replicates


macs2 callpeak -t  /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K27ME3/lane4_H3K27me3-yo-2_CAGATC_L004_R1_val_1.fq.gz_bowtie2_cleanedup_sorted_dupremoved.bam \
    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/INPUT/Input_Young_and_Old_Merged_16_Percent_Pooled_cleanedup_sorted_dupremoved.bam \
    -g mm \
    -n H3K27ME3_FrBC_Young_Rep1 \
    -f BAM  -p 0.01 --nomodel --broad --broad-cutoff 0.01\
    --outdir /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K27ME3/Young/Rep1

macs2 callpeak -t  /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K27ME3/lane7_H3K27me3-Yo-3_Spike-in_TAGCTT_L007_R1_val_1.fq.gz_bowtie2_cleanedup_sorted_dupremoved.bam \
    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/INPUT/Input_Young_and_Old_Merged_16_Percent_Pooled_cleanedup_sorted_dupremoved.bam \
    -g mm \
    -n H3K27ME3_FrBC_Young_Rep2 \
    -f BAM  -p 0.01 --nomodel --broad --broad-cutoff 0.01\
    --outdir /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K27ME3/Young/Rep2

macs2 callpeak -t  /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K27ME3/lane3397_AGTCAA_Yo-H3K27me3-BC-nb4_L008_R1_val_1.fq.gz_bowtie2_mapped_dupremoved.bam \
    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/INPUT/Input_Young_and_Old_Merged_16_Percent_Pooled_cleanedup_sorted_dupremoved.bam \
    -g mm \
    -n H3K27ME3_FrBC_Young_Rep3 \
    -f BAM  -p 0.01 --nomodel --broad --broad-cutoff 0.01\
    --outdir /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K27ME3/Young/Rep3


macs2 callpeak -t  /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K27ME3/lane3436_AGTTCC_Yo-H3K27me3-BC-nb5_L001_R1_val_1.fq.gz_bowtie2_mapped_sorted_dupremoved.bam \
    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/INPUT/Input_Young_and_Old_Merged_16_Percent_Pooled_cleanedup_sorted_dupremoved.bam \
    -g mm \
    -n H3K27ME3_FrBC_Young_Rep4 \
    -f BAM  -p 0.01 --nomodel --broad --broad-cutoff 0.01\
    --outdir /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K27ME3/Young/Rep4


#H3K27ME3_FrBC_Aged all replicates
#macs2 callpeak -t  /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K27ME3/lane3397_ATGTCA_Old-H3K27me3-BC-nb4_L008_R1_val_1.fq.gz_bowtie2_mapped_dupremoved.bam\
#     /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K27ME3/lane4_H3K27me3-old-2_ACTTGA_L004_R1_val_1.fq.gz_bowtie2_cleanedup_sorted_dupremoved.bam \
#     /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K27ME3/lane7_H3K27me3-old-3_Spike-in_GGCTAC_L007_R1_val_1.fq.gz_bowtie2_cleanedup_sorted_dupremoved.bam \
#    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/INPUT/Input_Young_and_Old_Merged_16_Percent_Pooled_cleanedup_sorted_dupremoved.bam \
#    -g mm \
#    -n H3K27ME3_FrBC_Aged_all_Reps \
#    -f BAM \
#    --outdir /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K27ME3/H3K27ME3_FrBC_Aged_all_Reps -p 0.01 --nomodel --shift 73 -B --SPMR --broad



#H3K27ME3_FrBC_Young all replicates
#macs2 callpeak -t  /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K27ME3/lane3397_AGTCAA_Yo-H3K27me3-BC-nb4_L008_R1_val_1.fq.gz_bowtie2_mapped_sorted.bam \
#    /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K27ME3/lane4_H3K27me3-yo-2_CAGATC_L004_R1_val_1.fq.gz_bowtie2_cleanedup_sorted_dupremoved.bam \
#     /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/H3K27ME3/lane7_H3K27me3-Yo-3_Spike-in_TAGCTT_L007_R1_val_1.fq.gz_bowtie2_cleanedup_sorted_dupremoved.bam \
#    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/INPUT/Input_Young_and_Old_Merged_16_Percent_Pooled_cleanedup_sorted_dupremoved.bam \
#    -g mm \
#    -n H3K27ME3_FrBC_Young_all_Reps \
#    -f BAM \
#    --outdir /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K27ME3/H3K27ME3_FrBC_Young_all_Reps -p 0.01 --nomodel --shift 73 -B --SPMR --broad

########################### bdgcmp function ###########
#macs2 bdgcmp -t /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K27ME3/H3K27ME3_FrBC_Aged_all_Reps/H3K27ME3_FrBC_Aged_all_Reps_treat_pileup.bdg \
#    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K27ME3/H3K27ME3_FrBC_Aged_all_Reps/H3K27ME3_FrBC_Aged_all_Reps_control_lambda.bdg \
#    --outdir /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K27ME3/H3K27ME3_FrBC_Aged_all_Reps \
#    --o-prefix  H3K27ME3_FrBC_Aged_all_Reps\
#    -m logLR -p 0.01


#macs2 bdgcmp -t /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K27ME3/H3K27ME3_FrBC_Young_all_Reps/H3K27ME3_FrBC_Young_all_Reps_treat_pileup.bdg \
#    -c /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K27ME3/H3K27ME3_FrBC_Young_all_Reps/H3K27ME3_FrBC_Young_all_Reps_control_lambda.bdg \
#    --outdir /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K27ME3/H3K27ME3_FrBC_Young_all_Reps \
#    --o-prefix H3K27ME3_FrBC_Young_all_Reps \
#    -m logLR -p 0.01



