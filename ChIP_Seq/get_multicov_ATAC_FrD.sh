

#### FrD

multiBamCov -bams /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrD/Aged/Rep1/lane3_GRCm38_Aged_FrD_ATAC-Seq_replc1_TAAGGC_CTCTCT_L003_R1_val_1.fq.gz_bowtie2_q42_filtered_sorted.bam \
/bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrD/Aged/Rep2/lane3_GRCm38_Aged_FrD_ATAC-Seq_replc2_CGTACT_CTCTCT_L003_R1_val_1.fq.gz_bowtie2_q42_filtered_sorted.bam \
/bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrD/Aged/Rep3/lane3091_TAAGGCGA_AGAGTAGA_Aged3_L002_R1_val_1.GRCm38.bowtie2_q42_filtered_sorted.bam \
/bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrD/Aged/Rep4/lane3091_CGTACTAG_AGAGTAGA_Aged4_L002_R1_val_1.GRCm38.bowtie2_q42_filtered_sorted.bam \
/bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrD/Young/Rep1/lane3_GRCm38_Young_FrD_ATAC-Seq_replc1_AGGCAG_CTCTCT_L003_R1_val_1.fq.gz_bowtie2_q42_filtered_sorted.bam \
/bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrD/Young/Rep2/lane3_GRCm38_Young_FrD_ATAC-Seq_replc2_TCCTGA_CTCTCT_L003_R1_val_1.fq.gz_bowtie2_q42_filtered_sorted.bam \
/bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrD/Young/Rep3/lane3091_AGGCAGAA_AGAGTAGA_Young3_L002_R1_val_1.GRCm38.bowtie2_q42_filtered_sorted.bam  \
/bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrD/Young/Rep4/lane3091_TCCTGAGC_AGAGTAGA_Young4_L002_R1_val_1.GRCm38.bowtie2_q42_filtered_sorted.bam  \
-bed /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Aged_and_Young_Cancatenated/ATAC_Young_and_Aged_summits_cancatenated_sorted_merged_Blacklist_Removed.bed -q 42 > /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Aged_and_Young_Cancatenated/FrD_counts_at_peaks_from_all_four_replicates_mapq_filtered_byq42.txt


####### FrBC


# multiBamCov -bams /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrBC/Aged/Rep1/lane2_GRCm38_Aged_FrBC_ATAC-Seq_replc1_TAAGGCGA_TAGATCGC_L002_R1_val_1.fq.gz_bowtie2_q42_filtered_sorted.bam \
# /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrBC/Aged/Rep2/lane2_GRCm38_Aged_FrBC_ATAC-Seq_replc2_CGTACTAG_TAGATCGC_L002_R1_val_1.fq.gz_bowtie2_q42_filtered_sorted.bam \
# /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrBC/Aged/Rep3/lane3090_TAAGGCGA_TATCCTCT_Aged3_L001_R1_val_1.GRCm38.bowtie2_q42_filtered_sorted.bam \
# /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrBC/Aged/Rep4/lane3090_CGTACTAG_TATCCTCT_Aged4_L001_R1_val_1.GRCm38.bowtie2_q42_filtered_sorted.bam \
# /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrBC/Young/Rep1/lane2_GRCm38_Young_FrBC_ATAC-Seq_replc1_AGGCAGAA_TAGATCGC_L002_R1_val_1.fq.gz_bowtie2_q42_filtered_sorted.bam \
# /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrBC/Young/Rep2/lane2_GRCm38_Young_FrBC_ATAC-Seq_replc2_TCCTGAGC_TAGATCGC_L002_R1_val_1.fq.gz_bowtie2_q42_filtered_sorted.bam \
# /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrBC/Young/Rep3/lane3090_AGGCAGAA_TATCCTCT_Young3_L001_R1_val_1.GRCm38.bowtie2_q42_filtered_sorted.bam  \
# /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrBC/Young/Rep4/lane3090_TCCTGAGC_TATCCTCT_Young4_L001_R1_val_1.GRCm38.bowtie2_q42_filtered_sorted.bam  \
# -bed /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrBC_Aged_and_Young_Cancatenated/FrBC_Aged_and_Young_Cancatenated_sorted_merged_BLed.bed -q 42 > /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrBC_Aged_and_Young_Cancatenated/FrBC_counts_at_peaks_from_all_four_replicates_mapq_filtered_byq42.txt