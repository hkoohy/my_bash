#!/bin/bash


echo "Hi there, I have started sorting your file. This may take a while, so consider having a cup of coffee!"
echo "your file is:"
echo $1
input_fname=$1
output_fname=${input_fname%.bam}_sorted.bam
if [ -e $output_fname ]
    then
    echo "The file seems to be already sorted, if you want to it again, remove the sorted file and run me again\n"
else
    echo "got a job to sort"
    echo $output_fname
    echo ${input_fname%.bam}_sorted
    samtools sort $input_fname ${input_fname%.bam}_sorted
#${input_fname%.bam}_sorted
fi


#samtools sort /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/lane3091_TCCTGAGC_AGAGTAGA_Young4_L002_R1_val_1.GRCm38.bowtie2.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/lane3091_TCCTGAGC_AGAGTAGA_Young4_L002_R1_val_1.GRCm38.bowtie2_sorted
#samtools sort /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/lane3091_TAAGGCGA_AGAGTAGA_Aged3_L002_R1_val_1.GRCm38.bowtie2.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/lane3091_TAAGGCGA_AGAGTAGA_Aged3_L002_R1_val_1.GRCm38.bowtie2_sorted
#samtools sort /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/lane3091_CGTACTAG_AGAGTAGA_Aged4_L002_R1_val_1.GRCm38.bowtie2.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/lane3091_CGTACTAG_AGAGTAGA_Aged4_L002_R1_val_1.GRCm38.bowtie2_sorted
#samtools sort /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/lane3091_AGGCAGAA_AGAGTAGA_Young3_L002_R1_val_1.GRCm38.bowtie2.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/lane3091_AGGCAGAA_AGAGTAGA_Young3_L002_R1_val_1.GRCm38.bowtie2_sorted
#samtools sort /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/lane3090_TCCTGAGC_TATCCTCT_Young4_L001_R1_val_1.GRCm38.bowtie2.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/lane3090_TCCTGAGC_TATCCTCT_Young4_L001_R1_val_1.GRCm38.bowtie2_sorted
#samtools sort /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/lane3090_TAAGGCGA_TATCCTCT_Aged3_L001_R1_val_1.GRCm38.bowtie2.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/lane3090_TAAGGCGA_TATCCTCT_Aged3_L001_R1_val_1.GRCm38.bowtie2_sorted
#samtools sort /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/lane3090_CGTACTAG_TATCCTCT_Aged4_L001_R1_val_1.GRCm38.bowtie2.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/lane3090_CGTACTAG_TATCCTCT_Aged4_L001_R1_val_1.GRCm38.bowtie2_sorted
#samtools sort /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/lane3090_AGGCAGAA_TATCCTCT_Young3_L001_R1_val_1.GRCm38.bowtie2.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/lane3090_AGGCAGAA_TATCCTCT_Young3_L001_R1_val_1.GRCm38.bowtie2_sorted
#samtools sort /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/lane3_GRCm38_Young_FrD_ATAC-Seq_replc2_TCCTGA_CTCTCT_L003_R1_val_1.fq.gz_bowtie2.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/lane3_GRCm38_Young_FrD_ATAC-Seq_replc2_TCCTGA_CTCTCT_L003_R1_val_1.fq.gz_bowtie2_sorted
#samtools sort /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/lane3_GRCm38_Young_FrD_ATAC-Seq_replc1_AGGCAG_CTCTCT_L003_R1_val_1.fq.gz_bowtie2.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/lane3_GRCm38_Young_FrD_ATAC-Seq_replc1_AGGCAG_CTCTCT_L003_R1_val_1.fq.gz_bowtie2_sorted
#samtools sort /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/lane3_GRCm38_Aged_FrD_ATAC-Seq_replc2_CGTACT_CTCTCT_L003_R1_val_1.fq.gz_bowtie2.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/lane3_GRCm38_Aged_FrD_ATAC-Seq_replc2_CGTACT_CTCTCT_L003_R1_val_1.fq.gz_bowtie2_sorted
#samtools sort /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/lane3_GRCm38_Aged_FrD_ATAC-Seq_replc1_TAAGGC_CTCTCT_L003_R1_val_1.fq.gz_bowtie2.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/lane3_GRCm38_Aged_FrD_ATAC-Seq_replc1_TAAGGC_CTCTCT_L003_R1_val_1.fq.gz_bowtie2_sorted
#samtools sort /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/lane2_GRCm38_Young_FrBC_ATAC-Seq_replc2_TCCTGAGC_TAGATCGC_L002_R1_val_1.fq.gz_bowtie2.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/lane2_GRCm38_Young_FrBC_ATAC-Seq_replc2_TCCTGAGC_TAGATCGC_L002_R1_val_1.fq.gz_bowtie2_sorted
#samtools sort /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/lane2_GRCm38_Young_FrBC_ATAC-Seq_replc1_AGGCAGAA_TAGATCGC_L002_R1_val_1.fq.gz_bowtie2.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/lane2_GRCm38_Young_FrBC_ATAC-Seq_replc1_AGGCAGAA_TAGATCGC_L002_R1_val_1.fq.gz_bowtie2_sorted
#samtools sort /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/lane2_GRCm38_Aged_FrBC_ATAC-Seq_replc2_CGTACTAG_TAGATCGC_L002_R1_val_1.fq.gz_bowtie2.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/lane2_GRCm38_Aged_FrBC_ATAC-Seq_replc2_CGTACTAG_TAGATCGC_L002_R1_val_1.fq.gz_bowtie2_sorted
#samtools sort /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/lane2_GRCm38_Aged_FrBC_ATAC-Seq_replc1_TAAGGCGA_TAGATCGC_L002_R1_val_1.fq.gz_bowtie2.bam /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/lane2_GRCm38_Aged_FrBC_ATAC-Seq_replc1_TAAGGCGA_TAGATCGC_L002_R1_val_1.fq.gz_bowtie2_sorted


