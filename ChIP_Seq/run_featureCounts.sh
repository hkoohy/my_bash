#!/bin/bash

########## to run as qsub job: uncomment and rename accordingly
# qsub  -cwd -V -b y -l h_vmem=10G -j y -o readCounts.out ./run_featureCounts.sh

# featureCounts -F SAF -a /bi/group/sysgen/Hashem/ISP_from_Dan/MACS_Outputs/FrD_ATAC_Dan_MT_Removed/FrD_Young_and_Aged_Cated_sorted_merged.saf -Q 30 -P -p -d 50 -D 800 -T 8 \
# -o /bi/group/sysgen/Hashem/ISP_from_Dan/MACS_Outputs/FrD_ATAC_Dan_MT_Removed/FrD_Young_and_Aged_Cated_sorted_merged_featureCounts.txt \
# /bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrD_ATAC_Dan/lane4980_AGGCAGAA_YD5_L006_R1_val_1_GRCm38_bowtie2_MT_removed.bam \
# /bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrD_ATAC_Dan/lane4981_CTCTCTAC_YD6_L007_R1_val_1_GRCm38_bowtie2_MT_removed.bam \
# /bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrD_ATAC_Dan/lane5148_AGGCAGAA_YD7_L001_R1_val_1_GRCm38_bowtie2_MT_removed.bam \
# /bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrD_ATAC_Dan/lane5151_TAGGCATG_YD8_L004_R1_val_1_GRCm38_bowtie2_MT_removed.bam \
# /bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrD_ATAC_Dan/lane4980_CAGAGAGG_AD5_L006_R1_val_1_GRCm38_bowtie2_MT_removed.bam \
# /bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrD_ATAC_Dan/lane4981_CGAGGCTG_AD6_L007_R1_val_1_GRCm38_bowtie2_MT_removed.bam \
# /bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrD_ATAC_Dan/lane5148_TAGGCATG_AD7_L001_R1_val_1_GRCm38_bowtie2_MT_removed.bam \
# /bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrD_ATAC_Dan/lane5151_AGGCAGAA_AD8_L004_R1_val_1_GRCm38_bowtie2_MT_removed.bam 

# featureCounts -F SAF -a /bi/group/sysgen/Hashem/ISP_from_Dan/MACS_Outputs/FrBC_ATAC_Dan_MT_Removed/FrBC_Young_and_Aged_Cated_sorted_merged.saf -Q 30 -P -p -d 50 -D 800 -T 8 \
# -o /bi/group/sysgen/Hashem/ISP_from_Dan/MACS_Outputs/FrBC_ATAC_Dan_MT_Removed/FrBC_Young_and_Aged_Cated_sorted_merged_featureCounts.txt \
# /bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrBC_ATAC_Dan/lane4980_TAAGGCGA_YBC5_L006_R1_val_1_GRCm38_bowtie2_MT_removed.bam \
# /bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrBC_ATAC_Dan/lane4981_GGACTCCT_YBC6_L007_R1_val_1_GRCm38_bowtie2_MT_removed.bam \
# /bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrBC_ATAC_Dan/lane5148_TAAGGCGA_YBC7_L001_R1_val_1_GRCm38_bowtie2_MT_removed.bam \
# /bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrBC_ATAC_Dan/lane5151_CGTACTAG_YBC8_L004_R1_val_1_GRCm38_bowtie2_MT_removed.bam \
# /bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrBC_ATAC_Dan/lane4980_TAGGCATG_ABC5_L006_R1_val_1_GRCm38_bowtie2_MT_removed.bam \
# /bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrBC_ATAC_Dan/lane4981_GCTACGCT_ABC6_L007_R1_val_1_GRCm38_bowtie2_MT_removed.bam \
# /bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrBC_ATAC_Dan/lane5148_CGTACTAG_ABC7_L001_R1_val_1_GRCm38_bowtie2_MT_removed.bam \
# /bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrBC_ATAC_Dan/lane5151_TAAGGCGA_ABC8_L004_R1_val_1_GRCm38_bowtie2_MT_removed.bam