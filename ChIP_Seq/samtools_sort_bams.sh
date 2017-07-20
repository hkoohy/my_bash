#!/bin/bash
######### qsub run: ###########
# qsub -cwd -l h_vmem=20G -o Sort_Young.output ./samtools_sort_bams.sh

#To sort bam files in a directory that match the criteria

echo "Hi there, I started sorting your files but it might take a  while!"

for f in /bi/group/sysgen/Hashem/ISP_from_Dan/Bam_Files/Rag_Knouts/Female/*.bam 
 do 
    #echo $f
    output=${f%.bam}_sorted.bam
    if [ -e $output ]
	then
	echo  "file **** " $output " ***** Exists, skiping"
    else
	echo "file **** " $f " **** Not Exists, sorting "
	samtools sort -o ${f%.bam}_sorted.bam $f
   fi
done

#samtools sort /bi/group/sysgen/Hashem/Jeremy_Data/Replicate_3/lane7_H3K27me3-old-3_Spike-in_GGCTAC_L007_R1_val_1.fq.gz_bowtie2_cleanedup.bam /bi/group/sysgen/Hashem/Jeremy_Data/Replicate_3/lane7_H3K27me3-old-3_Spike-in_GGCTAC_L007_R1_val_1.fq.gz_bowtie2_cleanedup_sorted

#samtools sort /bi/group/sysgen/Hashem/Jeremy_Data/Replicate_3/lane7_H3K27me3-Yo-3_Spike-in_TAGCTT_L007_R1_val_1.fq.gz_bowtie2_cleanedup.bam /bi/group/sysgen/Hashem/Jeremy_Data/Replicate_3/lane7_H3K27me3-Yo-3_Spike-in_TAGCTT_L007_R1_val_1.fq.gz_bowtie2_cleanedup_sorted

#samtools sort /bi/group/sysgen/Hashem/Jeremy_Data/Replicate_3/lane6_H3K4me3-Yo-3_Spike-in_ATCACG_L006_R1_val_1.fq.gz_bowtie2_cleanedup.bam /bi/group/sysgen/Hashem/Jeremy_Data/Replicate_3/lane6_H3K4me3-Yo-3_Spike-in_ATCACG_L006_R1_val_1.fq.gz_bowtie2_cleanedup_sorted

#samtools sort /bi/group/sysgen/Hashem/Jeremy_Data/Replicate_3/lane6_H3K4me3-old-3_Spike-in_CGATGT_L006_R1_val_1.fq.gz_bowtie2_cleanedup.bam /bi/group/sysgen/Hashem/Jeremy_Data/Replicate_3/lane6_H3K4me3-old-3_Spike-in_CGATGT_L006_R1_val_1.fq.gz_bowtie2_cleanedup_sorted 