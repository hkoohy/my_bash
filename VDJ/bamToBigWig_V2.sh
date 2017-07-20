#!/bin/bash

#bam_file=/bi/group/sysgen/Hashem/VDJ_Analysis/BigWigs_For_GEO/lane2_GCCAAT_Rag_nucRNA-seq.2_L002_R1_val_1.bowtie_n0_sorted.bam
#output=/bi/group/sysgen/Hashem/VDJ_Analysis/BigWigs_For_GEO/lane2_GCCAAT_Rag_nucRNA-seq.2_L002_R1_val_1.bowtie_n0_sorted.bdg
#g_sizes=/bi/scratch/Hashem/Genome_Sizes/mm9.chrom.sizes_v2
g_sizes=/bi/scratch/Hashem/Genome_Sizes/mm10.genome.size

#echo $bam_file
#genomeCoverageBed -ibam $bam_file -bg -g $g_sizes > $output

for bdg in /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/MACS_OUTPUT/H3K4ME3/H3K4ME3_FrBC_Young_all_Reps/*_logLR.bdg
 do
    echo $bdg
    bw_output=${bdg%.bdg}.bw
    echo $bw_output
    /bi/home/koohyh/userApps/bin/bedGraphToBigWig $bdg $g_sizes $bw_output
 done





#for f in /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/BAM_Files_mm9/*_sorted.bam 
# do 
#    echo $f
#    output=${f%.bam}.bw
#    bdgoutput=${f%.bam}.bdg
#    if [ -e $output ]
#	then
#	echo  "File Exists, skiping"
#	else
#	echo "Not Exists, sorting "
#	genomeCoverageBed -ibam $f -bg -g $g_sizes > $bdgoutput
#	bdg2bw $bdg hg19.genome.info 
#   fi
#done

    