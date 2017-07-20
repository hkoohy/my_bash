#!/bin/bash
bam_dirs=/bi/group/sysgen/Hashem/VDJ_Analysis/VDJ_IgK/Bam_Files_2017/
kappa_region=/bi/group/sysgen/Hashem/VDJ_Analysis/VDJ_IgK/EpicSeg_Analysis_2017/IgK_Locus.bed
epic_out=/bi/group/sysgen/Hashem/VDJ_Analysis/VDJ_IgK/EpicSeg_Analysis_2017/EpicSeq_Output
echo "Started getting counts!"
epicseg getcounts --regions ${kappa_region} \
--mark H3K4ME3:${bam_dirs}Rag_H3K4me3_30Nov2009_perfect_sorted_sorted.bam \
--mark E2A:${bam_dirs}GSM546523_Sample7.1.RAG1KO-E2A_Sorted.bam \
--mark BRG1:${bam_dirs}SRR1917139_Brg1_ChIP-Seq_proB_cells_1.fastq.gz_bowtie_Sorted.bam \
--mark IKAROS:${bam_dirs}SRR1917137_Ikaros_ChIP-Seq_proB_cells_1_trimmed.fq.gz_bowtie2_Sorted.bam \
--mark CTCF:${bam_dirs}SRR099835_GSM672401_Pro_B_cell_Rag2_CTCF_1_val_1.fq_bowtie_sorted_Sorted.bam \
--mark RAD21:${bam_dirs}SRR099837_GSM672403_Pro_B_cell_Rad21_1_val_1.fq_bowtie_sorted_Sorted.bam \
--mark H3K4ME2:${bam_dirs}GSM987804_SRR543407_pro_B__H3K4me2_ChIP_seq_1_trimmed.fq_sorted_Sorted.bam \
--mark P300:${bam_dirs}GSM987808_SRR543411_pro_B__p300_ChIP_seq_1_trimmed.fq_sorted_Sorted.bam \
--mark PU1:${bam_dirs}GSM539538_SRR064918_PU_1_Pro-B_cells_replicate_1.fastq.gz_bowtie_sorted_Sorted.bam \
--mark MED1:${bam_dirs}GSM1038263_SRR620145_Med1_Pro_Bcell_ChipSeq_1.fastq.gz_bowtie_sorted_Sorted.bam \
--mark EBF1:${bam_dirs}SRR408700_GSM876622_EBF1_ChIP_seq_8246_6_1_Merged_with_2_1_Mapped_Only_Sorted.bam \
--mark IRF4:${bam_dirs}SRR1057446_IRF4_ChIP-seq_pro-B_8844_1_trimmed.fq.gz_bowtie2_mapped_Only_SORTED_Sorted.bam \
--mark YY1:${bam_dirs}SRR866262_Pro-B_cell_Yy1_Bio_Rag2_R26_BirA_BirA__1_val_1.fq_bowtie_sorted_Sorted.bam \
--mark PAX5:${bam_dirs}SRR499699_Pax5_Bio_ChIP_seq_pro_B_8417_1_sorted_Sorted.bam \
--mark H3K9AC:${bam_dirs}SRR499718_9_H3k9ac_merged_Mapped_Only_SORTED_Sorted.bam \
--mark H3K27ME:${bam_dirs}SRR499722_3_4_H3k27me3_merged_Mapped_Only_SORTED_Sorted.bam \
--mark DHS:${bam_dirs}SRR499743_DHS_seq_pro_B_8439_1_1_sorted_Sorted.bam \
--mark H3K4ME1:${bam_dirs}SRR499709_H3K4me1_ChIP_seq_pro_B_8666_1_sorted_Sorted.bam \
--target ${epic_out}/kappa_counts_200bp.txt \
--mapq 30 \
--binsize 200

echo "Normalizing the count matirx"


epicseg normalizecounts -c ${epic_out}/kappa_counts_200bp.txt

