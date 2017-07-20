#!/bin/bash



 #########################################

#Note: reads with mapq score less than 42 have been filtered from original bam files(samtools view -h -q 42 ....)
# How to run as a qsub job: first load macs2, then run the following command
#qsub -cwd -l h_vmem=20G -V -j y -o Andrew_FrD_Y_and_A.output -N ATAC_Seq -m eas -M hashem.koohy@babraham.ac.uk ./run_macs2_ATAC_Seq_Andrew_FrD.sh


### NOTE: the applied flags in the following calls have been used as they have
### been suggested in new ATAC-Seq paper doi:10.1038/nature14590 

# frD ATAC from Dan


# macs2 callpeak -t /bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrD_ATAC_Dan/FrD_Y_2Reps_Merged/ATAC_FrD_Y_2Reps.bam \
# --outdir /bi/group/sysgen/Hashem/ISP_from_Dan/MACS_Outputs/FrD_ATAC_Dan/FrD_Y_2Reps_Merged \
# -n ATAC_FrD_Y_2Reps_Merged \
# -f BAM -g mm -p 0.001 --nomodel --nolambda --keep-dup all --call-summits


# macs2 callpeak -t /bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrD_ATAC_Dan/FrD_A_2Reps_Merged/ATAC_FrD_A_2Reps.bam \
# --outdir /bi/group/sysgen/Hashem/ISP_from_Dan/MACS_Outputs/FrD_ATAC_Dan/FrD_A_2Reps_Merged \
# -n ATAC_FrD_A_2Reps_Merged \
# -f BAM -g mm -p 0.001 --nomodel --nolambda --keep-dup all --call-summits


# FrBC need to be filled when the merged bam file is ready
macs2 callpeak -t /bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrBC_ATAC_Dan/FrBC_Y_2Reps_Merged/ATAC_FrBC_Y_2Reps.bam \
--outdir /bi/group/sysgen/Hashem/ISP_from_Dan/MACS_Outputs/FrBC_ATAC_Dan/FrBC_Y_2Reps_Merged \
-n ATAC_FrBC_Y_2Reps_Merged \
-f BAM -g mm -p 0.001 --nomodel --nolambda --keep-dup all --call-summits

# # FrBC 
# macs2 callpeak -t /bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrBC_ATAC_Dan/FrBC_A_2Reps_Merged/FrBC_A_2Reps.bam \
# --outdir /bi/group/sysgen/Hashem/ISP_from_Dan/MACS_Outputs/FrBC_ATAC_Dan/FrBC_A_2Reps_Merged \
# -n ATAC_FrBC_A_2Reps_Merged \
# -f BAM -g mm -p 0.001 --nomodel --nolambda --keep-dup all --call-summits

######### ******************************* Dan's ATAC *********

# macs2 callpeak -t /bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrD_ATAC_Dan/lane4980_AGGCAGAA_YD5_L006_R1_val_1_GRCm38_bowtie2_sorted.bam \
# --outdir /bi/group/sysgen/Hashem/ISP_from_Dan/MACS_Outputs/FrD_ATAC_Dan \
# -n FrD_YR5 \
# -f BAM -g mm -p 0.001 --nomodel --nolambda --keep-dup all --call-summits


# macs2 callpeak -t /bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrD_ATAC_Dan/lane4981_CTCTCTAC_YD6_L007_R1_val_1_GRCm38_bowtie2_sorted.bam \
# --outdir /bi/group/sysgen/Hashem/ISP_from_Dan/MACS_Outputs/FrD_ATAC_Dan \
# -n FrD_YR6 \
# -f BAM -g mm -p 0.001 --nomodel --nolambda --keep-dup all --call-summits


# macs2 callpeak -t /bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrD_ATAC_Dan/lane4980_CAGAGAGG_AD5_L006_R1_val_1_GRCm38_bowtie2_sorted.bam \
# --outdir /bi/group/sysgen/Hashem/ISP_from_Dan/MACS_Outputs/FrD_ATAC_Dan \
# -n FrD_AR5 \
# -f BAM -g mm -p 0.001 --nomodel --nolambda --keep-dup all --call-summits


# macs2 callpeak -t /bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrD_ATAC_Dan/lane4981_CGAGGCTG_AD6_L007_R1_val_1_GRCm38_bowtie2_sorted.bam \
# --outdir /bi/group/sysgen/Hashem/ISP_from_Dan/MACS_Outputs/FrD_ATAC_Dan \
# -n FrD_AR6
# -f BAM -g mm -p 0.001 --nomodel --nolambda --keep-dup all --call-summits


# # ### frBC ATAC Dan
# macs2 callpeak -t /bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrBC_ATAC_Dan/lane4980_TAAGGCGA_YBC5_L006_R1_val_1_GRCm38_bowtie2_sorted.bam \
# --outdir /bi/group/sysgen/Hashem/ISP_from_Dan/MACS_Outputs/FrBC_ATAC_Dan \
# -n FrBC_YR5 \
# -f BAM -g mm -p 0.001 --nomodel --nolambda --keep-dup all --call-summits

# macs2 callpeak -t /bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrBC_ATAC_Dan/lane4981_GGACTCCT_YBC6_L007_R1_val_1_GRCm38_bowtie2_sorted.bam \
# --outdir /bi/group/sysgen/Hashem/ISP_from_Dan/MACS_Outputs/FrBC_ATAC_Dan \
# -n FrBC_YR6 \
# -f BAM -g mm -p 0.001 --nomodel --nolambda --keep-dup all --call-summits

# macs2 callpeak -t /bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrBC_ATAC_Dan/lane4980_TAGGCATG_ABC5_L006_R1_val_1_GRCm38_bowtie2_sorted.bam \
# --outdir /bi/group/sysgen/Hashem/ISP_from_Dan/MACS_Outputs/FrBC_ATAC_Dan \
# -n FrBC_AR5 \
# -f BAM -g mm -p 0.001 --nomodel --nolambda --keep-dup all --call-summits

# macs2 callpeak -t /bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrBC_ATAC_Dan/lane4981_GCTACGCT_ABC6_L007_R1_val_1_GRCm38_bowtie2_sorted.bam \
# --outdir /bi/group/sysgen/Hashem/ISP_from_Dan/MACS_Outputs/FrBC_ATAC_Dan \
# -n FrBC_AR6 \
# -f BAM -g mm -p 0.001 --nomodel --nolambda --keep-dup all --call-summits





# #Aged 
# macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/bowtie2/Bam_Files/FrD_Ageds_Merged/FrD_4_Ageds_Merged.bam \
#      --outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/bowtie2/MACS2_Outputs/FrD/FrD_Aged \
#     -n FrD_Aged_4Reps_Merged \
#     -f BAM -g mm -p 0.001 --nomodel --nolambda --keep-dup all --call-summits


# #Young
# macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/bowtie2/Bam_Files/FrD_Youngs_Merged/FrD_4_Youngs_Merged.bam \
#     --outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/bowtie2/MACS2_Outputs/FrD/FrD_Young \
#     -n FrD_Young_4Reps_Merged \
#     -f BAM -g mm -p 0.001 --nomodel --nolambda --keep-dup all --call-summits


##################################################
#############################################
##############################################
#Young

# macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrD/Young/Rep1/lane3_GRCm38_Young_FrD_ATAC-Seq_replc1_AGGCAG_CTCTCT_L003_R1_val_1.fq.gz_bowtie2_q42_filtered.bam  \
#  --outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Young/Rep1 \
# -n FrD_Young_Rep1\
# -f BAM -g mm --nomodel -p 0.001 


# macs2 callpeak -t  /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrD/Young/Rep2/lane3_GRCm38_Young_FrD_ATAC-Seq_replc2_TCCTGA_CTCTCT_L003_R1_val_1.fq.gz_bowtie2_q42_filtered.bam \
#  --outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Young/Rep2 \
#  -n FrD_Young_Rep2\
# -f BAM -g mm --nomodel -p 0.001 


# macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrD/Young/Rep3/lane3091_AGGCAGAA_AGAGTAGA_Young3_L002_R1_val_1.GRCm38.bowtie2_q42_filtered.bam \
#  --outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Young/Rep3 \
#  -n FrD_Young_Rep3\
#  -f BAM -g mm --nomodel -p 0.001 

# macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrD/Young/Rep4/lane3091_TCCTGAGC_AGAGTAGA_Young4_L002_R1_val_1.GRCm38.bowtie2_q42_filtered.bam \
#  --outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Young/Rep4 \
#  -n FrD_Young_Rep4\
#  -f BAM -g mm --nomodel -p 0.001 


# #Aged
# macs2 callpeak -t  /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrD/Aged/Rep1/lane3_GRCm38_Aged_FrD_ATAC-Seq_replc1_TAAGGC_CTCTCT_L003_R1_val_1.fq.gz_bowtie2_q42_filtered.bam \
#  --outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Aged/Rep1 \
#  -n FrD_Aged_Rep1\
#  -f BAM -g mm --nomodel -p 0.001 \


# macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrD/Aged/Rep2/lane3_GRCm38_Aged_FrD_ATAC-Seq_replc2_CGTACT_CTCTCT_L003_R1_val_1.fq.gz_bowtie2_q42_filtered.bam \
#  --outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Aged/Rep2 \
#  -n FrD_Aged_Rep2\
#  -f BAM -g mm --nomodel -p 0.001 \


#  macs2 callpeak -t  /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrD/Aged/Rep3/lane3091_TAAGGCGA_AGAGTAGA_Aged3_L002_R1_val_1.GRCm38.bowtie2_q42_filtered.bam \
#  --outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Aged/Rep3 \
#  -n FrD_Aged_Rep3\
#  -f BAM -g mm --nomodel -p 0.001 

#  macs2 callpeak -t  /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrD/Aged/Rep4/lane3091_CGTACTAG_AGAGTAGA_Aged4_L002_R1_val_1.GRCm38.bowtie2_q42_filtered.bam \
#  --outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Aged/Rep4 \
#  -n FrD_Aged_Rep4\
#  -f BAM -g mm --nomodel -p 0.001 

## In what follows I will be calling broad peaks on merged Young and merged Aged FrD data

# #Aged 
# macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrD/Aged/FrD_Aged_Merged_Reps/FrD_Aged_Four_Reps_Merged.bam \
#      --outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Aged/FrD_Aged_Merged_Reps \
#     -n FrD_Aged_4Reps_Merged \
#     -f BAM -g mm -q 0.05 --nomodel --shift 37 --extsize 73 --broad --broad-cutoff   0.05


# #Young
# macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrD/Young/FrD_Young_Merged_Reps/FrD_Young_Four_Reps_Merged.bam \
#     --outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Young/FrD_Young_Merged_Reps \
#     -n FrD_Young_4Reps_Merged \
#     -f BAM -g mm -q 0.05 --nomodel --shift 37 --extsize 73 --broad --broad-cutoff   0.05
