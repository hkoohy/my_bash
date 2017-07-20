#!/bin/bash

#For Andrew mm10

 macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/Subsampled_Bams/lane2_Aged_FrBC_ATAC-Seq_replc1_TAAGGCGA_TAGATCGC_L002_R1_val_1.bwa_subsampled.bam \
 --outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrBC_Aged/FrBC_Aged_Rep1_Subsampled \
 -n FrBC_Aged_Rep1_Subsampled\
 -f BAM -g mm --nomodel -p 0.001 \


macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/Subsampled_Bams/lane2_Aged_FrBC_ATAC-Seq_replc2_CGTACTAG_TAGATCGC_L002_R1_val_1.bwa_subsampled.bam \
 --outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrBC_Aged/FrBC_Aged_Rep2_Subsampled \
 -n FrBC_Aged_Rep2_Subsampled\
 -f BAM -g mm --nomodel -p 0.001 \



#macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/lane2_Young_FrBC_ATAC-Seq_replc1_AGGCAGAA_TAGATCGC_L002_R1_val_1.bwa_sorted.bam \
#--outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrBC_Young/FrBC_Young_Rep1 \
#-n FrBC_Young_Rep1 \
#-f BAM -g mm --nomodel -p 0.001 \

#macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/lane2_Young_FrBC_ATAC-Seq_replc2_TCCTGAGC_TAGATCGC_L002_R1_val_1.bwa_sorted.bam \
#--outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrBC_Young/FrBC_Young_Rep2 \
#-n FrBC_Young_Rep2 \
#-f BAM -g mm --nomodel -p 0.001 \


#macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/Bam_Files/lane2_GRCm38_Aged_FrBC_ATAC-Seq_replc1_TAAGGCGA_TAGATCGC_L002_R1_val_1.fq.gz_bowtie2_sorted.bam \
#--outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/MACS_OUTPUT/FrBC_Aged_Rep1 \
#-n FrBC_Aged_Rep1\
#-f BAM -g mm --nomodel -q 0.01


#macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/Bam_Files/lane2_GRCm38_Aged_FrBC_ATAC-Seq_replc2_CGTACTAG_TAGATCGC_L002_R1_val_1.fq.gz_bowtie2_sorted.bam \
#--outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/MACS_OUTPUT/FrBC_Aged_Rep2 \
#-n FrBC_Aged_Rep2\
#-f BAM -g mm --nomodel -q 0.01


#macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/Bam_Files/lane3090_AGGCAGAA_FrBC_Young3_L001_R1_val_1.GRCm38.bowtie2_sorted.bam \
#--outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/MACS_OUTPUT/FrBC_Young_Rep3 \
#-n FrBC_Young_Rep3\
#-f BAM -g mm --nomodel -q 0.01


#macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/Bam_Files/lane3090_TCCTGAGC_FrBC_Young4_L001_R1_val_1.GRCm38.bowtie2_sorted.bam \
#--outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/MACS_OUTPUT/FrBC_Young_Rep4 \
#-n FrBC_Young_Rep4 \
#-f BAM -g mm --nomodel -q 0.01


#macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/Bam_Files/lane3090_TAAGGCGA_FrBC_Aged3_L001_R1_val_1.GRCm38.bowtie2_sorted.bam \
#--outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/MACS_OUTPUT/FrBC_Aged_Rep3 \
#-n FrBC_Aged_Rep3\
#-f BAM -g mm --nomodel -q 0.01


#macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/Bam_Files/lane3090_CGTACTAG_FrBC_Aged4_L001_R1_val_1.GRCm38.bowtie2_sorted.bam \
#--outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/MACS_OUTPUT/FrBC_Aged_Rep4 \
#-n FrBC_Aged_Rep4\
#-f BAM -g mm --nomodel -q 0.01



#macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/Bam_Files/lane3_GRCm38_Young_FrD_ATAC-Seq_replc1_AGGCAG_CTCTCT_L003_R1_val_1.fq.gz_bowtie2_sorted.bam \
#--outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/MACS_OUTPUT/FrD_Young_Rep1\
#-n FrD_Young_Rep1\
#-f BAM -g mm --nomodel -q 0.01


#macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/Bam_Files/lane3_GRCm38_Young_FrD_ATAC-Seq_replc2_TCCTGA_CTCTCT_L003_R1_val_1.fq.gz_bowtie2_sorted.bam \
#--outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/MACS_OUTPUT/FrD_Young_Rep2 \
#-n FrD_Young_Rep2\
#-f BAM -g mm --nomodel -q 0.01


#macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/Bam_Files/lane3091_AGGCAGAA_FrD_Young3_L002_R1_val_1.GRCm38.bowtie2_sorted.bam \
#--outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/MACS_OUTPUT/FrD_Young_Rep3 \
#-n FrD_Young_Rep3 \
#-f BAM -g mm --nomodel -q 0.01


#macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/Bam_Files/lane3091_TCCTGAGC_FrD_Young4_L002_R1_val_1.GRCm38.bowtie2_sorted.bam \
#--outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/MACS_OUTPUT/FrD_Young_Rep4 \
#-n FrD_Young_Rep4\
#-f BAM -g mm --nomodel -q 0.01


#macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/Bam_Files/lane3_GRCm38_Aged_FrD_ATAC-Seq_replc1_TAAGGC_CTCTCT_L003_R1_val_1.fq.gz_bowtie2_sorted.bam \
#--outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/MACS_OUTPUT/FrD_Aged_Rep1 \
#-n FrD_Aged_Rep1\
#-f BAM -g mm --nomodel -q 0.01


#macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/Bam_Files/lane3_GRCm38_Aged_FrD_ATAC-Seq_replc2_CGTACT_CTCTCT_L003_R1_val_1.fq.gz_bowtie2_sorted.bam \
#--outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/MACS_OUTPUT/FrD_Aged_Rep2 \
#-n FrD_Aged_Rep2 \
#-f BAM -g mm --nomodel -q 0.01


#macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/Bam_Files/lane3091_TAAGGCGA_FrD_Aged3_L002_R1_val_1.GRCm38.bowtie2_sorted.bam \
#--outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/MACS_OUTPUT/FrD_Aged_Rep3 \
#-n FrD_Aged_Rep3 \
#-f BAM -g mm --nomodel -q 0.01


#macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/Bam_Files/lane3091_CGTACTAG_FrD_Aged4_L002_R1_val_1.GRCm38.bowtie2_sorted.bam \
#--outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/MACS_OUTPUT/FrD_Aged_Rep4 \
#-n FrD_Aged_Rep4\
#-f BAM -g mm --nomodel -q 0.01



#for Bryony Data mm10

#macs2 callpeak -t /bi/group/sysgen/Hashem/Bryony_ATAC_SEQ/mm10/Bam_Files/lane5_GRCm38_RAG_FrBC_AGGCAGAA_L005_R1_val_1.fq.gz_bowtie2_sorted.bam \
#--outdir /bi/group/sysgen/Hashem/Bryony_ATAC_SEQ/mm10/MACS_OUTPUT/FrBc_RAG_Rep1 \
#-n FrBc_RAG_Rep1 \
#-f BAM -g mm --nomodel -q 0.01

#macs2 callpeak -t /bi/group/sysgen/Hashem/Bryony_ATAC_SEQ/mm10/Bam_Files/lane7_GRCm38_Rag_FrBC_AGGCAG_CTCTCT_L007_R1_val_1.fq.gz_bowtie2_sorted.bam \
#--outdir /bi/group/sysgen/Hashem/Bryony_ATAC_SEQ/mm10/MACS_OUTPUT/FrBc_RAG_Rep2 \
#-n FrBc_RAG_Rep2 \
#-f BAM -g mm --nomodel -q 0.01

#macs2 callpeak -t /bi/group/sysgen/Hashem/Bryony_ATAC_SEQ/mm10/Bam_Files/lane6_GRCm38_RAG_FrA_TAAGGCGA_L006_R1_val_1.fq.gz_bowtie2_sorted.bam \
#--outdir /bi/group/sysgen/Hashem/Bryony_ATAC_SEQ/mm10/MACS_OUTPUT/FrA_RAG_Rep1 \
#-n FrA_RAG_Rep1 \
#-f BAM -g mm --nomodel -q 0.01

#macs2 callpeak -t /bi/group/sysgen/Hashem/Bryony_ATAC_SEQ/mm10/Bam_Files/lane7_GRCm38_RAG_FrA_TAAGGC_TAGATC_L007_R1_val_1.fq.gz_bowtie2_sorted.bam \
#--outdir /bi/group/sysgen/Hashem/Bryony_ATAC_SEQ/mm10/MACS_OUTPUT/FrA_RAG_Rep2 \
#-n FrA_RAG_Rep2 \
#-f BAM -g mm --nomodel -q 0.01


################################

#macs2 callpeak -t /bi/group/sysgen/Hashem/Bryony_ATAC_SEQ/Bam_Files_mm9/lane7_Rag_FrBC_AGGCAG_CTCTCT_L007_R1_val_1.fq.gz_bowtie2_sorted.bam \
#-f BAM -g mm --outdir /bi/group/sysgen/Hashem/Bryony_ATAC_SEQ/MACS2_Outputs/lane7_Rag_FrBC_AGGCAG_CTCTCT_L007 \
#-n lane7_Rag_FrBC_AGGCAG_CTCTCT_L007 --nomodel  -q 0.01

#macs2 callpeak -t /bi/group/sysgen/Hashem/Bryony_ATAC_SEQ/Bam_Files_mm9/lane7_RAG_FrA_TAAGGC_TAGATC_L007_R1_val_1.fq.gz_bowtie2_sorted.bam \
#-f BAM -g mm  --outdir /bi/group/sysgen/Hashem/Bryony_ATAC_SEQ/MACS2_Outputs/lane7_RAG_FrA_TAAGGC_TAGATC_L007 \
#-n lane7_RAG_FrA_TAAGGC_TAGATC_L007 --nomodel -q 0.01

#macs2 callpeak -t /bi/group/sysgen/Hashem/Bryony_ATAC_SEQ/Bam_Files_mm9/lane6_RAG_FrA_TAAGGCGA_L006_R1_val_1.fq.gz_bowtie2_sorted.bam \
#-f BAM -g mm --outdir /bi/group/sysgen/Hashem/Bryony_ATAC_SEQ/MACS2_Outputs/lane6_RAG_FrA_TAAGGCGA_L006 \
#-n lane6_RAG_FrA_TAAGGCGA_L006 --nomodel  -q 0.01

#macs2 callpeak -t /bi/group/sysgen/Hashem/Bryony_ATAC_SEQ/Bam_Files_mm9/lane5_RAG_FrBC_AGGCAGAA_L005_R1_val_1.fq.gz_bowtie2_sorted.bam \
#-f BAM -g mm --outdir /bi/group/sysgen/Hashem/Bryony_ATAC_SEQ/MACS2_Outputs/lane5_RAG_FrBC_AGGCAGAA_L005 \
#-n lane5_RAG_FrBC_AGGCAGAA_L005 --nomodel  -q 0.01


#for Andrew Data
#macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/BAM_Files_mm9/lane3_Young_FrD_ATAC-Seq_replc2_TCCTGA_CTCTCT_L003_R1_val_1.bowtie2_sorted.bam \
#-f BAM -g mm --outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/MACS2_Outputs/lane3_Young_FrD_ATAC-Seq_replc2 \
#-n lane3_Young_FrD_ATAC-Seq_replc2 --nomodel  -q 0.01


#macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/BAM_Files_mm9/lane3_Young_FrD_ATAC-Seq_replc1_AGGCAG_CTCTCT_L003_R1_val_1.bowtie2_sorted.bam \
#-f BAM -g mm --outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/MACS2_Outputs/lane3_Young_FrD_ATAC-Seq_replc1 \
#-n lane3_Young_FrD_ATAC-Seq_replc1 --nomodel  -q 0.01

#macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/BAM_Files_mm9/lane3_Aged_FrD_ATAC-Seq_replc2_CGTACT_CTCTCT_L003_R1_val_1.bowtie2_sorted.bam \
#-f BAM -g mm --outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/MACS2_Outputs/lane3_Aged_FrD_ATAC-Seq_replc2 \
#-n lane3_Aged_FrD_ATAC-Seq_replc2 --nomodel  -q 0.01


#macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/BAM_Files_mm9/lane3_Aged_FrD_ATAC-Seq_replc1_TAAGGC_CTCTCT_L003_R1_val_1.bowtie2_sorted.bam \
#-f BAM -g mm --outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/MACS2_Outputs/lane3_Aged_FrD_ATAC-Seq_replc1 \
#-n lane3_Aged_FrD_ATAC-Seq_replc1 --nomodel  -q 0.01


#macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/BAM_Files_mm9/lane2_Young_FrBC_ATAC-Seq_replc1_AGGCAGAA_TAGATCGC_L002_R1_val_1.bowtie2_sorted.bam \
#-f BAM -g mm --outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/MACS2_Outputs/lane2_Young_FrBC_ATAC-Seq_replc1 \
#-n lane2_Young_FrBC_ATAC-Seq_replc1 --nomodel  -q 0.01


#macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/BAM_Files_mm9/lane2_Aged_FrBC_ATAC-Seq_replc2_CGTACTAG_TAGATCGC_L002_R1_val_1.bowtie2_sorted.bam \
#-f BAM -g mm --outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/MACS2_Outputs/lane2_Aged_FrBC_ATAC-Seq_replc2 \
#-n lane2_Aged_FrBC_ATAC-Seq_replc2 --nomodel  -q 0.01

#macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/BAM_Files_mm9/lane2_Aged_FrBC_ATAC-Seq_replc1_TAAGGCGA_TAGATCGC_L002_R1_val_1.bowtie2_sorted.bam \
#-f BAM -g mm --outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/MACS2_Outputs/lane2_Aged_FrBC_ATAC-Seq_replc1 \
#-n lane2_Aged_FrBC_ATAC-Seq_replc1 --nomodel  -q 0.01

#macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/BAM_Files_mm9/lane2_Young_FrBC_ATAC-Seq_replc2_TCCTGAGC_TAGATCGC_L002_R1_val_1.bowtie2_sorted.bam \
#-f BAM -g mm --outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/MACS2_Outputs/lane2_Young_FrBC_ATAC-Seq_replc2 \
#-n lane2_Young_FrBC_ATAC-Seq_replc2 --nomodel  -q 0.01

############ Here I will taking Aged as treatment and Young as control:


#macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/BAM_Files_mm9/lane2_Aged_FrBC_ATAC-Seq_replc1_TAAGGCGA_TAGATCGC_L002_R1_val_1.bowtie2_sorted.bam \
#-c /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/BAM_Files_mm9/lane2_Young_FrBC_ATAC-Seq_replc1_AGGCAGAA_TAGATCGC_L002_R1_val_1.bowtie2_sorted.bam \
#-f BAM -g mm --outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/MACS2_Outputs/FrBC_Repl1 \
#-n Aged_as_Treatment_Young_as_Control --nomodel  -q 0.01

#macs2 callpeak -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/BAM_Files_mm9/lane2_Aged_FrBC_ATAC-Seq_replc2_CGTACTAG_TAGATCGC_L002_R1_val_1.bowtie2_sorted.bam \
#-c /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/BAM_Files_mm9/lane2_Young_FrBC_ATAC-Seq_replc2_TCCTGAGC_TAGATCGC_L002_R1_val_1.bowtie2_sorted.bam \
#-f BAM -g mm --outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/MACS2_Outputs/FrBC_Repl2 \
#-n Aged_as_Treatment_Young_as_Control_Rep2 --nomodel  -q 0.01

