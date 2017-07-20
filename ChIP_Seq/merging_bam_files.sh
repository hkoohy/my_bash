#!/bin/bash

#qsub -cwd -l h_vmem=20G -o merging_bams.output ./merging_bam_files.sh
# frD

samtools merge /bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrD_ATAC_Dan/FrD_Y_2Reps_Merged/ATAC_FrD_Y_2Reps.bam \
/bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrD_ATAC_Dan/lane4980_AGGCAGAA_YD5_L006_R1_val_1_GRCm38_bowtie2_sorted.bam \
/bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrD_ATAC_Dan/lane4981_CTCTCTAC_YD6_L007_R1_val_1_GRCm38_bowtie2_sorted.bam


samtools merge /bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrD_ATAC_Dan/FrD_A_2Reps_Merged/ATAC_FrD_A_2Reps.bam \
/bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrD_ATAC_Dan/lane4980_CAGAGAGG_AD5_L006_R1_val_1_GRCm38_bowtie2_sorted.bam \
/bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrD_ATAC_Dan/lane4981_CGAGGCTG_AD6_L007_R1_val_1_GRCm38_bowtie2_sorted.bam  

# frBC

samtools merge /bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrBC_ATAC_Dan/FrBC_Y_2Reps_Merged/ATAC_FrBC_Y_2Reps.bam \
/bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrBC_ATAC_Dan/lane4980_TAAGGCGA_YBC5_L006_R1_val_1_GRCm38_bowtie2_sorted.bam \
/bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrBC_ATAC_Dan/lane4981_GGACTCCT_YBC6_L007_R1_val_1_GRCm38_bowtie2_sorted.bam

samtools merge /bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrBC_ATAC_Dan/FrBC_A_2Reps_Merged/FrBC_A_2Reps.bam \
/bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrBC_ATAC_Dan/lane4980_TAGGCATG_ABC5_L006_R1_val_1_GRCm38_bowtie2_sorted.bam \
/bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/FrBC_ATAC_Dan/lane4981_GCTACGCT_ABC6_L007_R1_val_1_GRCm38_bowtie2_sorted.bam


#echo "samtools merge H3K4ME3_FrBC_Young_Merged.bam lane5_young_IP_H3k4me3_GCCAAT_L005_R1_val_1.fq.gz_bowtie2_cleanedup_sorted_dupremoved.bam lane5_H3K4me3-yo-2_ACAGTG_L005_R1_val_1.fq.gz_bowtie2_cleanedup_sorted_dupremoved.bam lane6_H3K4me3-Yo-3_Spike-in_ATCACG_L006_R1_val_1.fq.gz_bowtie2_cleanedup_sorted_dupremoved.bam " | qsub -cwd -l h_vmem=10G  -V -j y -o H3K4ME3_Young.output  -N merging_h3k4me3_young -m eas -M koohyh@babraham.ac.uk

#echo "samtools merge /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrBC/Aged/Aged_Merged_Reps/Aged_Four_Reps_Merged.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrBC/Aged/Rep1/lane2_GRCm38_Aged_FrBC_ATAC-Seq_replc1_TAAGGCGA_TAGATCGC_L002_R1_val_1.fq.gz_bowtie2_q42_filtered_sorted.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrBC/Aged/Rep2/lane2_GRCm38_Aged_FrBC_ATAC-Seq_replc2_CGTACTAG_TAGATCGC_L002_R1_val_1.fq.gz_bowtie2_q42_filtered_sorted.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrBC/Aged/Rep3/lane3090_TAAGGCGA_TATCCTCT_Aged3_L001_R1_val_1.GRCm38.bowtie2_q42_filtered_sorted.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrBC/Aged/Rep4/lane3090_CGTACTAG_TATCCTCT_Aged4_L001_R1_val_1.GRCm38.bowtie2_q42_filtered_sorted.bam" | qsub -cwd -l h_vmem=20G  -V -j y -o merging_frBC_aged.output  -N Merging_FrBC_Aged -m eas -M koohyh@babraham.ac.uk


#echo "samtools merge /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrBC/Young/Young_Merged_Reps/Young_Four_Reps_Merged.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrBC/Young/Rep1/lane2_GRCm38_Young_FrBC_ATAC-Seq_replc1_AGGCAGAA_TAGATCGC_L002_R1_val_1.fq.gz_bowtie2_q42_filtered_sorted.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrBC/Young/Rep2/lane2_GRCm38_Young_FrBC_ATAC-Seq_replc2_TCCTGAGC_TAGATCGC_L002_R1_val_1.fq.gz_bowtie2_q42_filtered_sorted.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrBC/Young/Rep3/lane3090_AGGCAGAA_TATCCTCT_Young3_L001_R1_val_1.GRCm38.bowtie2_q42_filtered_sorted.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrBC/Young/Rep4/lane3090_TCCTGAGC_TATCCTCT_Young4_L001_R1_val_1.GRCm38.bowtie2_q42_filtered_sorted.bam" | qsub -cwd -l h_vmem=20G  -V -j y -o merging_frBC_youn.output  -N Merging_FrBC_Young -m eas -M koohyh@babraham.ac.uk

#echo "samtools merge /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrD/Aged/FrD_Aged_Merged_Reps/FrD_Aged_Four_Reps_Merged.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrD/Aged/Rep1/lane3_GRCm38_Aged_FrD_ATAC-Seq_replc1_TAAGGC_CTCTCT_L003_R1_val_1.fq.gz_bowtie2_q42_filtered_sorted.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrD/Aged/Rep2/lane3_GRCm38_Aged_FrD_ATAC-Seq_replc2_CGTACT_CTCTCT_L003_R1_val_1.fq.gz_bowtie2_q42_filtered_sorted.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrD/Aged/Rep3/lane3091_TAAGGCGA_AGAGTAGA_Aged3_L002_R1_val_1.GRCm38.bowtie2_q42_filtered_sorted.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrD/Aged/Rep4/lane3091_CGTACTAG_AGAGTAGA_Aged4_L002_R1_val_1.GRCm38.bowtie2_q42_filtered_sorted.bam" | qsub -cwd -l h_vmem=20G  -V -j y -o merging_frD_aged.output  -N Merging_FrD_Aged -m eas -M koohyh@babraham.ac.uk

# echo "samtools merge /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrD/Young/FrD_Young_Merged_Reps/FrD_Young_Four_Reps_Merged.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrD/Young/Rep1/lane3_GRCm38_Young_FrD_ATAC-Seq_replc1_AGGCAG_CTCTCT_L003_R1_val_1.fq.gz_bowtie2_q42_filtered_sorted.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrD/Young/Rep2/lane3_GRCm38_Young_FrD_ATAC-Seq_replc2_TCCTGA_CTCTCT_L003_R1_val_1.fq.gz_bowtie2_q42_filtered_sorted.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrD/Young/Rep3/lane3091_AGGCAGAA_AGAGTAGA_Young3_L002_R1_val_1.GRCm38.bowtie2_q42_filtered_sorted.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrD/Young/Rep4/lane3091_TCCTGAGC_AGAGTAGA_Young4_L002_R1_val_1.GRCm38.bowtie2_q42_filtered_sorted.bam" | qsub -cwd -l h_vmem=20G  -V -j y -o merging_frD_young.output  -N Merging_FrD_Young -m eas -M koohyh@babraham.ac.uk

#FrD Young
# samtools merge /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/bowtie2/Bam_Files/FrD_Youngs_Merged/FrD_4_Youngs_Merged.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/bowtie2/Bam_Files/lane3_Young_FrD_ATAC-Seq_replc1_AGGCAG_CTCTCT_L003_R1_val_1.X1200.bowtie2_sorted.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/bowtie2/Bam_Files/lane3_Young_FrD_ATAC-Seq_replc2_TCCTGA_CTCTCT_L003_R1_val_1.X1200.bowtie2_sorted.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/bowtie2/Bam_Files/lane3091_AGGCAGAA_AGAGTAGA_Young3_L002_R1_val_1.X1200.bowtie2_sorted.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/bowtie2/Bam_Files/lane3091_TCCTGAGC_AGAGTAGA_Young4_L002_R1_val_1.X1200.bowtie2_sorted.bam


# #FrD Aged
# samtools merge /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/bowtie2/Bam_Files/FrD_Ageds_Merged/FrD_4_Ageds_Merged.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/bowtie2/Bam_Files/lane3_Aged_FrD_ATAC-Seq_replc1_TAAGGC_CTCTCT_L003_R1_val_1.X1200.bowtie2_sorted.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/bowtie2/Bam_Files/lane3_Aged_FrD_ATAC-Seq_replc2_CGTACT_CTCTCT_L003_R1_val_1.X1200.bowtie2_sorted.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/bowtie2/Bam_Files/lane3091_TAAGGCGA_AGAGTAGA_Aged3_L002_R1_val_1.X1200.bowtie2_sorted.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/bowtie2/Bam_Files/lane3091_CGTACTAG_AGAGTAGA_Aged4_L002_R1_val_1.X1200.bowtie2_sorted.bam

# #FrBC Young
# samtools merge /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/bowtie2/Bam_Files/FrBC_Youngs_Merged/FrBC_4_Youngs_Merged.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/bowtie2/Bam_Files/lane2_Young_FrBC_ATAC-Seq_replc1_AGGCAGAA_TAGATCGC_L002_R1_val_1.X1200.bowtie2_sorted.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/bowtie2/Bam_Files/lane2_Young_FrBC_ATAC-Seq_replc2_TCCTGAGC_TAGATCGC_L002_R1_val_1.X1200.bowtie2_sorted.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/bowtie2/Bam_Files/lane3090_AGGCAGAA_TATCCTCT_Young3_L001_R1_val_1.X1200.bowtie2_sorted.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/bowtie2/Bam_Files/lane3090_TCCTGAGC_TATCCTCT_Young4_L001_R1_val_1.X1200.bowtie2_sorted.bam

# #FrBC Aged


# samtools merge /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/bowtie2/Bam_Files/FrBC_Ageds_Merged/FrBC_4_Aged_Merged.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/bowtie2/Bam_Files/lane2_Aged_FrBC_ATAC-Seq_replc1_TAAGGCGA_TAGATCGC_L002_R1_val_1.X1200.bowtie2_sorted.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/bowtie2/Bam_Files/lane2_Aged_FrBC_ATAC-Seq_replc2_CGTACTAG_TAGATCGC_L002_R1_val_1.X1200.bowtie2_sorted.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/bowtie2/Bam_Files/lane3090_TAAGGCGA_TATCCTCT_Aged3_L001_R1_val_1.X1200.bowtie2_sorted.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/bowtie2/Bam_Files/lane3090_CGTACTAG_TATCCTCT_Aged4_L001_R1_val_1.X1200.bowtie2_sorted.bam
