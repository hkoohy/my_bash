#/bin/bash

for file in /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10/Bam_Files/DownSampled_Bam_Files/*_downsampled.bam
do
    echo ${file}
    output=${file%.bam}.output
    error=${file%.bam}.err
    qsub -cwd -V -b y -l h_vmem=8G -o ${output} -e ${error} ./samtools_sort_V2.sh ${file}
done
