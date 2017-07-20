#!/bin/bash
# ***************** NOTE *******************
#for some of these commands you need to ask more memory than what is available by default. In particular:
# qsub  -cwd -V -b y -l h_vmem=10G -j y -o Output_qsub ./this_sh_file.sh
# ********************* End of Note *************** 


######### Fr BC ###############


# frBC_bamDir='/bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrBC_ATAC_Dan/'
# frBC_outDir_Young='/bi/group/sysgen/Hashem/ISP_from_Dan/MACS_Outputs/FrBC_ATAC_Dan_MT_Removed/FrBC_ATAC_Young/'
# frBC_outDir_Aged='/bi/group/sysgen/Hashem/ISP_from_Dan/MACS_Outputs/FrBC_ATAC_Dan_MT_Removed/FrBC_ATAC_Aged/'


# macs2 callpeak -t ${frBC_bamDir}lane4980_TAAGGCGA_YBC5_L006_R1_val_1_GRCm38_bowtie2_MT_removed.bam \
# -g mm \
# -n FrBC_YR5 \
# -f BAM \
# --outdir ${frBC_outDir_Young} \
# --nomodel --shift -25 --extsize 50 -q 0.01 



# macs2 callpeak -t ${frBC_bamDir}lane4981_GGACTCCT_YBC6_L007_R1_val_1_GRCm38_bowtie2_MT_removed.bam \
# -g mm \
# -n FrBC_YR6 \
# -f BAM \
# --outdir ${frBC_outDir_Young} \
# --nomodel --shift -25 --extsize 50 -q 0.01 



# macs2 callpeak -t ${frBC_bamDir}lane5148_TAAGGCGA_YBC7_L001_R1_val_1_GRCm38_bowtie2_MT_removed.bam \
# -g mm \
# -n FrBC_YR7 \
# -f BAM \
# --outdir ${frBC_outDir_Young} \
# --nomodel --shift -25 --extsize 50 -q 0.01 



# macs2 callpeak -t ${frBC_bamDir}lane5151_CGTACTAG_YBC8_L004_R1_val_1_GRCm38_bowtie2_MT_removed.bam \
# -g mm \
# -n FrBC_YR8 \
# -f BAM \
# --outdir ${frBC_outDir_Young} \
# --nomodel --shift -25 --extsize 50 -q 0.01 


# macs2 callpeak -t ${frBC_bamDir}lane4980_TAGGCATG_ABC5_L006_R1_val_1_GRCm38_bowtie2_MT_removed.bam \
# -g mm \
# -n FrBC_AR5 \
# -f BAM \
# --outdir ${frBC_outDir_Aged} \
# --nomodel --shift -25 --extsize 50 -q 0.01 

# macs2 callpeak -t ${frBC_bamDir}lane4981_GCTACGCT_ABC6_L007_R1_val_1_GRCm38_bowtie2_MT_removed.bam \
# -g mm \
# -n FrBC_AR6 \
# -f BAM \
# --outdir ${frBC_outDir_Aged} \
# --nomodel --shift -25 --extsize 50 -q 0.01 


# macs2 callpeak -t ${frBC_bamDir}lane5148_CGTACTAG_ABC7_L001_R1_val_1_GRCm38_bowtie2_MT_removed.bam \
# -g mm \
# -n FrBC_AR7 \
# -f BAM \
# --outdir ${frBC_outDir_Aged} \
# --nomodel --shift -25 --extsize 50 -q 0.01 


# macs2 callpeak -t ${frBC_bamDir}lane5151_TAAGGCGA_ABC8_L004_R1_val_1_GRCm38_bowtie2_MT_removed.bam \
# -g mm \
# -n FrBC_AR8 \
# -f BAM \
# --outdir ${frBC_outDir_Aged} \
# --nomodel --shift -25 --extsize 50 -q 0.01 


# ######### FrD ##############
frD_bamDir='/bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrD_ATAC_Dan/'
frD_outDir_Young='/bi/group/sysgen/Hashem/ISP_from_Dan/MACS_Outputs/FrD_ATAC_Dan_MT_Removed/FrD_ATAC_Young/'
frD_outDir_Aged='/bi/group/sysgen/Hashem/ISP_from_Dan/MACS_Outputs/FrD_ATAC_Dan_MT_Removed/FrD_ATAC_Aged/'


# macs2 callpeak -t ${frD_bamDir}lane4980_AGGCAGAA_YD5_L006_R1_val_1_GRCm38_bowtie2_MT_removed.bam \
# -g mm \
# -n FrD_YR5 \
# -f BAM \
# --outdir ${frD_outDir_Young} \
# --nomodel --shift -25 --extsize 50 -q 0.01 


# macs2 callpeak -t ${frD_bamDir}lane4981_CTCTCTAC_YD6_L007_R1_val_1_GRCm38_bowtie2_MT_removed.bam \
# -g mm \
# -n FrD_YR6 \
# -f BAM \
# --outdir ${frD_outDir_Young} \
# --nomodel --shift -25 --extsize 50 -q 0.01 


# macs2 callpeak -t ${frD_bamDir}lane5148_AGGCAGAA_YD7_L001_R1_val_1_GRCm38_bowtie2_MT_removed.bam \
# -g mm \
# -n FrD_YR7 \
# -f BAM \
# --outdir ${frD_outDir_Young} \
# --nomodel --shift -25 --extsize 50 -q 0.01 

# macs2 callpeak -t ${frD_bamDir}lane5151_TAGGCATG_YD8_L004_R1_val_1_GRCm38_bowtie2_MT_removed.bam \
# -g mm \
# -n FrD_YR8 \
# -f BAM \
# --outdir ${frD_outDir_Young} \
# --nomodel --shift -25 --extsize 50 -q 0.01 

# macs2 callpeak -t ${frD_bamDir}lane4980_CAGAGAGG_AD5_L006_R1_val_1_GRCm38_bowtie2_MT_removed.bam \
# -g mm \
# -n FrD_AR5 \
# -f BAM \
# --outdir ${frD_outDir_Aged} \
# --nomodel --shift -25 --extsize 50 -q 0.01 

# macs2 callpeak -t ${frD_bamDir}lane4981_CGAGGCTG_AD6_L007_R1_val_1_GRCm38_bowtie2_MT_removed.bam \
# -g mm \
# -n FrD_AR6 \
# -f BAM \
# --outdir ${frD_outDir_Aged} \
# --nomodel --shift -25 --extsize 50 -q 0.01 

# macs2 callpeak -t ${frD_bamDir}lane5148_TAGGCATG_AD7_L001_R1_val_1_GRCm38_bowtie2_MT_removed.bam \
# -g mm \
# -n FrD_AR7 \
# -f BAM \
# --outdir ${frD_outDir_Aged} \
# --nomodel --shift -25 --extsize 50 -q 0.01 


# macs2 callpeak -t ${frD_bamDir}lane5151_AGGCAGAA_AD8_L004_R1_val_1_GRCm38_bowtie2_MT_removed.bam \
# -g mm \
# -n FrD_AR8 \
# -f BAM \
# --outdir ${frD_outDir_Aged} \
# --nomodel --shift -25 --extsize 50 -q 0.01 
