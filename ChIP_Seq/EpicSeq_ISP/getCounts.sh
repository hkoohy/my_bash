#!/bin/bash
bam_dirs=/bi/group/sysgen/Hashem/Data_for_FTP/ISP_FTP_2017/Bams/
mm10_region=/bi/group/sysgen/Hashem/ISP_Segmentation_Analysis/mm10_BL_free_mouse_genome_for_chromatin_segmentation_sorted_chr.bed
epic_out=/bi/group/sysgen/Hashem/ISP_Segmentation_Analysis/EpicSeg_Output
echo "Started getting counts!"
epicseg getcounts --regions ${mm10_region} \
--mark CTCF:${bam_dirs}CTCF_FrD_Young_Rep1_chr_Sorted.bam \
--mark ATAC:${bam_dirs}lane4980_AGGCAGAA_YD5_L006_R1_val_1_GRCm38_bowtie2_MT_removed_chr_Sorted.bam \
--mark H3K4ME3:${bam_dirs}lane4910_TAGCTT_D_young1_L006_R1_val_1_GRCm38_bowtie2_chr_Sorted.bam \
--mark H3K27ME3:${bam_dirs}lane5363_GCCAAT_K27me3_young2_L004_R1_val_1_GRCm38_bowtie2_chr_Sorted.bam \
--target ${epic_out}/Young_500bp.txt \
--mapq 30 \
--binsize 500




epicseg getcounts --regions ${mm10_region} \
--mark CTCF:${bam_dirs}CTCF_FrD_Old_Rep1_chr_Sorted.bam \
--mark ATAC:${bam_dirs}lane4980_CAGAGAGG_AD5_L006_R1_val_1_GRCm38_bowtie2_MT_removed_chr_Sorted.bam \
--mark H3K4ME3:${bam_dirs}lane4910_TAGCTT_D_young1_L006_R1_val_1_GRCm38_bowtie2_chr_Sorted.bam \
--mark H3K27ME3:${bam_dirs}lane5363_TAGCTT_K27me3_old2_L004_R1_val_1_GRCm38_bowtie2_chr_Sorted.bam \
--target ${epic_out}/Aged_500bp.txt \
--mapq 30 \
--binsize 500


#echo "Normalizing the count matirx"


epicseg normalizecounts -c ${epic_out}/Young_500bp.txt \
-c ${epic_out}/Aged_500bp.txt

