#!/bin/bash

#samtools merge /bi/scratch/for_Hashem/Input_Young_Old_Merged/Input_Young_and_Old_Merged.bam /bi/scratch/for_Hashem/Input_Young/Input_Young_Sorted.bam /bi/scratch/for_Hashem/Input_Old/Input_Old_Merged_Sorted.bam

samtools view -b -s 0.16 /bi/scratch/for_Hashem/Input_Young_Old_Merged/Input_Young_and_Old_Merged.bam > /bi/scratch/for_Hashem/Input_Young_Old_Merged/Input_Young_and_Old_Merged_16_Percent_Pooled.bam

