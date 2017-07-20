#!/bin/bash


##for differential binding analysis see: https://github.com/taoliu/MACS/wiki/Call-differential-binding-events

#IP_DIR=/bi/group/sysgen/Hashem/Jeremy_Data/YY1/
#INPUT_DIR=/bi/scratch/for_Hashem/Input_Young_Old_Merged/
#OUTPUT_DIR=/bi/group/sysgen/Hashem/Jeremy_Data/MACS_OUTPUT/YY1/


#macs2 callpeak -B -t ${IP_DIR}lane3_YY1-old-1_CGATGT_L003_R1_val_1.fq.gz_bowtie2_Mapped_Only_Sorted_rmdup.bam -c ${INPUT_DIR}Input_Young_and_Old_Merged_16_Percent_Pooled_Sorted_rmdup.bam   -g mm -n YY1_Old -f BAM  --outdir ${OUTPUT_DIR} -p 0.001 --nomodel --extsize 230


IP_DIR=/bi/group/sysgen/Hashem/Jeremy_Data/MACS_OUTPUT/YY1/
OUTPUT_DIR=/bi/group/sysgen/Hashem/Jeremy_Data/MACS_OUTPUT/YY1/
macs2 bdgdiff --t1 ${IP_DIR}YY1_Young_treat_pileup.bdg --c1 ${IP_DIR}YY1_Young_control_lambda.bdg --t2 ${IP_DIR}YY1_Old_treat_pileup.bdg  --c2 ${IP_DIR}YY1_Old_control_lambda.bdg --d1 5149986  --d2 9155461 -g 100 -l 200 --o-prefix YY1_Young_vs_Old --outdir ${OUTPUT_DIR}