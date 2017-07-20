#/bin/bash


for bam_file in /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/Bam_Files/*_sorted.bam
 do
    bed_file=${bam_file%.bam}.bed
    if [ -e $bed_file ]
	then
	echo "file exists, skipping"
    else
	echo "file not exists, bamtobedding"
	bamToBed -i $bam_file > $bed_file 
    fi
 done
