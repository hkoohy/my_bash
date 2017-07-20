#!/bin/bash

#In Jermey's data, there are quite a lot of reads that either one end or boht ends are not properlay aligned. This is to filter out those bad reads and keep fragments for which both ends are properly alinged.




#for f in /bi/group/sysgen/Hashem/Jeremy_Data/Replicate_3/*Spike*
# do
#    #echo ${f}
#    I=${f}
#    ext_removed=${f%.bam}
#    output_fname=${ext_removed}_cleanedup.bam
#    echo "cleaning up :" ${I} 
#    #echo ${output_fname}
#    samtools view -b -f 0x2 -F 0x8 -F 0x4 ${I} > ${output_fname}
#    echo " **************************************"
	 
# done



#samtools view -b -f 0x2 -F 0x8 -F 0x4  /bi/scratch/for_Hashem/Data2/lane6_H3K4me1-old-D-1_TAGCTT_L006_R1_val_1.fq.gz_bowtie2.bam > /bi/scratch/for_Hashem/Data2/lane6_H3K4me1-old-D-1_TAGCTT_L006_R1_val_1.fq.gz_bowtie2_cleanedup.bam

#samtools view -b -f 0x2 -F 0x8 -F 0x4  /bi/scratch/for_Hashem/Data2/lane6_H3K4me1-yo-D-1_GATCAG_L006_R1_val_1.fq.gz_bowtie2.bam  > /bi/scratch/for_Hashem/Data2/lane6_H3K4me1-yo-D-1_GATCAG_L006_R1_val_1.fq.gz_bowtie2_cleanedup.bam

#echo "moved to second cleanup"
#samtools view -b -f 0x2 -F 0x8 -F 0x4  /bi/scratch/for_Hashem/Data2/lane3_YY1-yo-1_ATCACG_L003_R1_val_1.fq.gz_bowtie2.bam  > /bi/scratch/for_Hashem/Data2/lane3_YY1-yo-1_ATCACG_L003_R1_val_1.fq.gz_bowtie2_cleanedup.bam

#echo "moved to third cleanup"

#samtools view -b -f 0x2 -F 0x8 -F 0x4  /bi/scratch/for_Hashem/Data2/lane1_IP_IgG_TTAGGC_L001_R1_val_1.fq.gz_bowtie2.bam  > /bi/scratch/for_Hashem/Data2/lane1_IP_IgG_TTAGGC_L001_R1_val_1.fq.gz_bowtie2_cleanedup.bam


#samtools view -b -f 0x2 -F 0x8 -F 0x4  /bi/scratch/for_Hashem/Data2/lane5_young_IP_H3k4me3_GCCAAT_L005_R1_val_1.fq.gz_bowtie2.bam  > lane5_young_IP_H3k4me3_GCCAAT_L005_R1_val_1.fq.gz_bowtie2_cleanedup.bam

echo "started\n"
echo "first file started"
#samtools view -b -f 0x2 -F 0x8 -F 0x4 /bi/group/sysgen/Hashem/Jeremy_Data/Replicate_3/lane7_H3K27me3-old-3_Spike-in_GGCTAC_L007_R1_val_1.fq.gz_bowtie2.bam > /bi/group/sysgen/Hashem/Jeremy_Data/Replicate_3/lane7_H3K27me3-old-3_Spike-in_GGCTAC_L007_R1_val_1.fq.gz_bowtie2_cleanedup.bam

