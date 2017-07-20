#!/bin/bash
bam_dirs=/bi/group/sysgen/Hashem/VDJ_Analysis/VDJ_IgK/Bam_Files/
kappa_region=/bi/group/sysgen/Hashem/VDJ_Analysis/VDJ_IgK/IgK_Locus.bed
epic_out=/bi/group/sysgen/Hashem/VDJ_Analysis/VDJ_IgK/EpicSeg_Analysis/EpicSeq_Output
echo "Started getting counts!"
epicseg getcounts --regions ${kappa_region} \
--mark RAD21:${bam_dirs}SRR099837_GSM672403_Rad21_sorted.bam \
--mark PAX5:${bam_dirs}SRR499699_Pax5_sorted.bam \
--mark CTCF:${bam_dirs}SRR099835_GSM672401_CTCF_sorted.bam \
--mark DHS:${bam_dirs}SRR499743_DHS_sorted.bam \
--mark YY1:${bam_dirs}SRR866262_Yy1_sorted.bam \
--mark MED1:${bam_dirs}SRR620145_Med1_sorted.bam \
--mark H3K4ME2:${bam_dirs}SRR543407_H3K4me2_sorted.bam \
--mark H3K4ME1:${bam_dirs}SRR499709_H3K4me1_sorted.bam \
--mark H3K27ME3:${bam_dirs}SRR499722_H3K27me3_sorted.bam \
--mark EBF:${bam_dirs}SRR408700_GSM876622__EBF1_sorted.bam \
--mark IRF4:${bam_dirs}SRR1057446_IRF4_sorted.bam \
--mark PU1:${bam_dirs}SRR064918_PU_1_sorted.bam \
--mark H3K4ME3:${bam_dirs}Rag_H3K4me3_Inhouse_sorted.bam \
--mark E2A:${bam_dirs}New_Datasets/GSM546523_E2A_Rep1_sorted.bam \
--mark BRG1:${bam_dirs}New_Datasets/SRR1917139_Brg1_sorted.bam \
--target ${epic_out}/kappa_counts_200bp.txt \
--mapq 30 \
--binsize 200

#echo "Normalizing the count matirx"


epicseg normalizecounts -c ${epic_out}/kappa_counts_200bp.txt


#--mark H3K9AC:${bam_dirs}SRR499718_H3K9ac_sorted.bam \
#--mark P300:${bam_dirs}SRR543411_p300_sorted.bam \
#--mark IKAROS:${bam_dirs}SRR1057447_Ikaros_sorted.bam \
#--mark ATAC2:${bam_dirs}New_Datasets/SRR3382890_ATAC_preB_WT_rep2_sorted.bam \
#--mark CTCF2:${bam_dirs}New_Datasets/SRR397837_CTCF_sorted.bam \
#--mark H3K27ME3:${bam_dirs}SRR499722_H3K27me3_sorted.bam \