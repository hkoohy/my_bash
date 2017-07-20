#!/bin/bash

#For Amanda mm9


# How to run as a qsub job: first load macs2, then run the following command
#qsub -cwd -l h_vmem=10G -V -j y -o Amanda_ATAC_Seq.output -N ATAC_Seq -m eas -M hashem.koohy@babraham.ac.uk ./run_macs2_ATAC_Seq_Amanda.sh

#IL7

 macs2 callpeak -t /bi/group/corcoran/Amanda/for_Hashem/lane4033_TCCTGAGC_IL7RxRAGko_1_L001_R1_val_1.fq.gz_bowtie2.bam \
 --outdir /bi/group/corcoran/Amanda/for_Hashem/MACS2_Outputs/IL7/Rep1 \
 -n IL7_Rep1\
 -f BAM -g mm --nomodel -p 0.001 \


macs2 callpeak -t /bi/group/corcoran/Amanda/for_Hashem/lane4033_AGGCAGAA_IL7RxRAGko_2_L001_R1_val_1.fq.gz_bowtie2.bam \
 --outdir /bi/group/corcoran/Amanda/for_Hashem/MACS2_Outputs/IL7/Rep2 \
 -n IL7_Rep2\
 -f BAM -g mm --nomodel -p 0.001 \

#WT
 macs2 callpeak -t /bi/group/corcoran/Amanda/for_Hashem/lane4033_GGACTCCT_RAG2ko_females_L001_R1_val_1.fq.gz_bowtie2.bam \
 --outdir /bi/group/corcoran/Amanda/for_Hashem/MACS2_Outputs/WT/Rep1 \
 -n WT_Rep1\
 -f BAM -g mm --nomodel -p 0.001 \


macs2 callpeak -t /bi/group/corcoran/Amanda/for_Hashem/lane4033_TAGGCATG_RAG2ko_2_L001_R1_val_1.fq.gz_bowtie2.bam \
 --outdir /bi/group/corcoran/Amanda/for_Hashem/MACS2_Outputs/WT/Rep2 \
 -n WT_Rep2\
 -f BAM -g mm --nomodel -p 0.001 \


#Bryony
 macs2 callpeak -t /bi/group/corcoran/Amanda/for_Hashem/lane5_RAG_FrBC_AGGCAGAA_L005_R1_val_1.fq.gz_bowtie2.bam \
 --outdir /bi/group/corcoran/Amanda/for_Hashem/MACS2_Outputs/Bryony/Rep1 \
 -n Bryony_Rep1\
 -f BAM -g mm --nomodel -p 0.001 \


macs2 callpeak -t /bi/group/corcoran/Amanda/for_Hashem/lane7_Rag_FrBC_AGGCAG_CTCTCT_L007_R1_val_1.fq.gz_bowtie2.bam \
 --outdir /bi/group/corcoran/Amanda/for_Hashem/MACS2_Outputs/Bryony/Rep2 \
 -n Bryony_Rep2\
 -f BAM -g mm --nomodel -p 0.001 \

