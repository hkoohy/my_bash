###### The following is the command I run for calling macs2 peaks for some histone marks in Jeremy's data

macs2 callpeak -t /bi/scratch/for_Hashem/lane8_IPold-H3K27me3-seq2_GCCAAT_L008_R1.fastq.gz_bowtie2.bam -c /bi/scratch/fo
r_Hashem/lane2_Input_old_H3K27me3-1_CTTGTA_L002_R1.fastq.gz_bowtie2.bam -g mm -n H3K27ME3_Old --outdir /bi/scratch/for_H
ashem/MACS_OUTPUT/H3K27ME3_Old/ -p 0.01 --nomodel --extsize 300 --broad

######### DHS ###########
macs2 callpeak -t ${pathToTreatBams}SRR499743_DHS_seq_pro_B_8439_1_1_sorted.bam  -g mm -n DHS -f BAM --outdir ${pathToOutput}DHS -p 0.00001  --nomodel --shift -100 --extsize 300

########## EBF ############
macs2 callpeak -t ${pathToTreatBams}SRR408700_GSM876622_EBF1_ChIP_seq_8246_6_1_Merged_with_2_1_Mapped_Only_Sorted.bam -c ${pathToInput}INPUT_EBF_Merged_Mapped_Only.bam  -g mm -n EBF -f BAM --outdir ${pathToOutput}EBF -p 0.00001

################# YY1 ##########

macs2 callpeak -t ${pathToTreatBams}SRR866262_Pro-B_cell_Yy1_Bio_Rag2_R26_BirA_BirA__1_val_1.fq_bowtie_sorted.bam -c ${pathToInput}INPUT_SRR866265_YY1.bam  -g mm -n YY1 -f BAM --outdir ${pathToOutput}YY1 -p 0.00001 --nomodel --extsize 300

####### PU1 ######
macs2 callpeak -t ${pathToTreatBams}GSM539538_SRR064918_PU_1_Pro-B_cells_replicate_1.fastq.gz_bowtie_sorted.bam   -g mm -n PU1 -f BAM --outdir ${pathToOutput}PU1 -p 0.00001

###### P300 ########
macs2 callpeak -t ${pathToTreatBams}GSM987808_SRR543411_pro_B__p300_ChIP_seq_1_trimmed.fq_sorted.bam -c ${pathToInput}INPUT_GSM987812_SRR543415_pro-B_P300_FA_1.fastq.gz_bowtie_mapped_only.bam   -g mm -n P300 -f BAM --outdir ${pathToOutput}P300 -p 0.00001

######## MED1 ############
macs2 callpeak -t ${pathToTreatBams}GSM1038263_SRR620145_Med1_Pro_Bcell_ChipSeq_1.fastq.gz_bowtie_sorted.bam -c ${pathToInput}INPUT_GSM1038264_SRR620146_7_Merged_MED1_Mapped_Only.bam   -g mm -n MED1 -f BAM --outdir ${pathToOutput}MED1 -p 0.00001

########### H3K4ME2 #########
macs2 callpeak -t ${pathToTreatBams}GSM987804_SRR543407_pro_B__H3K4me2_ChIP_seq_1_trimmed.fq_sorted.bam -c ${pathToInput}INPUT_GSM987812_SRR543415_pro-B_P300_FA_1.fastq.gz_bowtie_mapped_only.bam   -g mm -n H3K4ME2 -f BAM --outdir ${pathToOutput}H3K4ME2 -p 0.00001 --nomodel --shift 37 --extsize 73

######## H3K27ME3 ##########

macs2 callpeak -t ${pathToTreatBams}SRR499722_3_4_H3k27me3_merged_Mapped_Only.bam -c ${pathToInput}INPUT_EBF_Merged_Mapped_Only.bam   -g mm -n H3K27ME3 -f BAM --outdir ${pathToOutput}H3K27ME3 -p 0.01 --nomodel --shift 37 --extsize 73 --broad

########### H3K4ME3 ############
macs2 callpeak -t ${pathToTreatBams}Rag_H3K4me3_30Nov2009_perfect_sorted.bam -c ${pathToInput}INPUT_H3k4me3.bam   -g mm -n H3K4ME3 -f BAM --outdir ${pathToOutput}H3K4ME3 -p 0.00001 --nomodel --shift 37 --extsize 73

######### H3K9AC ###############
macs2 callpeak -t ${pathToTreatBams}SRR499718_9_H3k9ac_merged_Mapped_Only.bam -c ${pathToInput}}INPUT_EBF_Merged_Mapped_Only.bam   -g mm -n H3K9AC -f BAM --outdir ${pathToOutput}H3K9AC -p 0.00001 --nomodel --shift 37 --extsize 73

####### H3K4ME1 ########
Similar to H3K4Me2 but with its own treatment data

########## IRF4 ###############
macs2 callpeak -t ${pathToTreatBams}SRR1057446_IRF4_ChIP-seq_pro-B_8844_1_trimmed.fq.gz_bowtie2_mapped_Only.bam -c ${pathToInput}INPUT_IRF4_SRR1057449.bam   -g mm -n IRF4 -f BAM --outdir ${pathToOutput}IRF4 -p 0.00001
