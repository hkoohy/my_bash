#!/bin/bash

DIR="/bi/scratch/Hashem/Epigen_And_Gen_VDJ/from_Dan_Revised_Data/EBF/"

samtools merge ${DIR}EBF_Merged_INPUTS.bam ${DIR}SRR408713_Rag2_Pro-B_input_8091_5__1.fastq.gz_bowtie_Sorted.bam ${DIR}SRR408714_Rag2_Pro-B_input_8091_6__1.fastq.gz_bowtie_Sorted.bam ${DIR}SRR408715_Rag2_Pro-B_input_8112_6__1.fastq.gz_bowtie_Sorted.bam ${DIR}SRR408716_Rag2_Pro-B_input_8112_1__1.fastq.gz_bowtie_Sorted.bam ${DIR}SRR408717_Rag2_Pro-B_input_8123_2__1.fastq.gz_bowtie_Sorted.bam ${DIR}SRR408718_Rag2_Pro-B_input_8123_3__1.fastq_bowtie_Sorted.bam ${DIR}SRR408719_Rag2_Pro-B_input_8149_8_30222AAXX__1.fastq.gz_bowtie_Sorted.bam ${DIR}SRR408720_Rag2_Pro-B_input_8149_8_301DTAAXX__1.fastq.gz_bowtie_Sorted.bam ${DIR}SRR408720_Rag2_Pro-B_input_8149_8_301DTAAXX__1.fastq.gz_bowtie.bam


