#!/bin/bash




# How to run as a qsub job: first load macs2, then run the following command
#qsub -cwd -l h_vmem=30G -V -j y -o Andrew_FrBC_Y_and_A_Rep3_and_4.output -N ATAC_Seq_FrBC -m eas -M hashem.koohy@babraham.ac.uk ./run_macs2_ATAC_Seq_Andrew_FrBC.sh

# #Young
# macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrBC/Young/Rep1/lane2_GRCm38_Young_FrBC_ATAC-Seq_replc1_AGGCAGAA_TAGATCGC_L002_R1_val_1.fq.gz_bowtie2_q42_filtered.bam  \
#  --outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrBC_Young/FrBC_Young_Rep1 \
#  -n FrBC_Young_Rep1\
#  -f BAM -g mm --nomodel -p 0.001 

# macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrBC/Young/Rep2/lane2_GRCm38_Young_FrBC_ATAC-Seq_replc2_TCCTGAGC_TAGATCGC_L002_R1_val_1.fq.gz_bowtie2.bam  \
#  --outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrBC_Young/FrBC_Young_Rep2 \
#  -n FrBC_Young_Rep2\
#  -f BAM -g mm --nomodel -p 0.001 



# macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrBC/Young/Rep3/lane3090_AGGCAGAA_TATCCTCT_Young3_L001_R1_val_1.GRCm38.bowtie2_q42_filtered.bam  \
#  --outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrBC_Young/FrBC_Young_Rep3 \
#  -n FrBC_Young_Rep3\
#  -f BAM -g mm --nomodel -p 0.001 


# macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrBC/Young/Rep4/lane3090_TCCTGAGC_TATCCTCT_Young4_L001_R1_val_1.GRCm38.bowtie2_q42_filtered.bam  \
#  --outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrBC_Young/FrBC_Young_Rep4 \
#  -n FrBC_Young_Rep4\
#  -f BAM -g mm --nomodel -p 0.001 



# #Aged

#  macs2 callpeak -t  /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrBC/Aged/Rep1/lane2_GRCm38_Aged_FrBC_ATAC-Seq_replc1_TAAGGCGA_TAGATCGC_L002_R1_val_1.fq.gz_bowtie2_q42_filtered.bam \
#  --outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrBC_Aged/FrBC_Aged_Rep1 \
#  -n FrBC_Aged_Rep1\
#  -f BAM -g mm --nomodel -p 0.001 

#  macs2 callpeak -t  /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrBC/Aged/Rep2/lane2_GRCm38_Aged_FrBC_ATAC-Seq_replc2_CGTACTAG_TAGATCGC_L002_R1_val_1.fq.gz_bowtie2_q42_filtered.bam \
#  --outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrBC_Aged/FrBC_Aged_Rep2 \
#  -n FrBC_Aged_Rep2\
#  -f BAM -g mm --nomodel -p 0.001 


#  macs2 callpeak -t  /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrBC/Aged/Rep3/lane3090_TAAGGCGA_TATCCTCT_Aged3_L001_R1_val_1.GRCm38.bowtie2_q42_filtered.bam \
#  --outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrBC_Aged/FrBC_Aged_Rep3 \
#  -n FrBC_Aged_Rep3\
#  -f BAM -g mm --nomodel -p 0.001 

#  macs2 callpeak -t  /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrBC/Aged/Rep4/lane3090_CGTACTAG_TATCCTCT_Aged4_L001_R1_val_1.GRCm38.bowtie2_q42_filtered.bam \
#  --outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrBC_Aged/FrBC_Aged_Rep4 \
#  -n FrBC_Aged_Rep4\
#  -f BAM -g mm --nomodel -p 0.001 



# In what follows I will be calling broad peaks on merged Young and merged Aged FrBC data

# #Aged
# macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrBC/Aged/Aged_Merged_Reps/Aged_Four_Reps_Merged.bam  \
#  --outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrBC_Aged/FrBC_Aged_Merged_Reps \
#  -n FrBC_Aged_4Reps_Merged \
#  -f BAM -g mm -q 0.05 --nomodel --shift 37 --extsize 73 --broad --broad-cutoff   0.05

#Young

macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrBC/Young/Young_Merged_Reps/Young_Four_Reps_Merged.bam \
--outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrBC_Young/FrBC_Young_Merged_Reps \
  -n FrBC_Young_4Reps_Merged \
 -f BAM -g mm -q 0.05 --nomodel --shift 37 --extsize 73 --broad --broad-cutoff   0.05
