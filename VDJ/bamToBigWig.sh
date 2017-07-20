#!/bin/bash

#need to change these two files as bamInput and bwOutput!
#BamFile='/bi/scratch/Hashem/Epigen_And_Gen_VDJ/Sorted_BAMS/SRR499699_Pax5_Bio_ChIP_seq_pro_B_8417_1_sorted.bam'
#BigWigFile='/bi/scratch/Hashem/Epigen_And_Gen_VDJ/Sorted_BAMS/SRR499699_Pax5_Bio_ChIP_seq_pro_B_8417_1_sorted.bw'

BamFile='/bi/group/sysgen/Hashem/VDJ_Analysis/Sorted_Bams_Final/SRR499718_9_H3k9ac_merged_Mapped_Only_SORTED.bam'
BigWigFile='/bi/group/sysgen/Hashem/VDJ_Analysis/BigWig_Files/H3K9AC.bw'


VDJLLOCUS='/bi/home/koohyh/Bash_Scripts/VDJ/IgH_Locus.bed'
chrSizes='/bi/scratch/Hashem/Epigen_And_Gen_VDJ/Sorted_BAMS/mm9.chromsizes.txt'

dummyFile='Dummy'
echo "variableStep chrom=chr12" > $dummyFile

#get depth
echo 'running samtools to get coverage'
samtools depth -r 12 -b $VDJLLOCUS $BamFile | awk '{print $2"\t"$3}' >> $dummyFile



#wigToBigWig
echo 'running wigToBigWig'
/bi/home/koohyh/userApps/bin/wigToBigWig $dummyFile $chrSizes $BigWigFile

echo "removing the file!"
rm -f $dummyFile