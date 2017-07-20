#!/bin/bash
# get extended summits (summits plus/minus radia)
# NOTE: MT instances manully removed from starting bed files.
#NOTE2: features with pval less than 5 and greater than 100 have been removed. Less than 5 to
# filter out less condfident, more than 100 to remove high signal regions which are homologue to MT

radias=250
distance_cutoff=100 #peaks shroter than this will be merged

outdir=/bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Aged_and_Young_Cancatenated/
Y_summits_fname=/bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Young/FrD_Young_Merged_Reps/FrD_Young_4Reps_Merged_summits.bed

Y_summits_extended_fname=${Y_summits_fname%.bed}_${radias}bp_extended.bed
#echo ${Y_summits_extended_fname}



awk -v var=${radias} '$5> 5 && $5< 100  {print $1"\t"$2-var"\t"$3+var}' ${Y_summits_fname} > ${Y_summits_extended_fname}

A_summits_fname=/bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Aged/FrD_Aged_Merged_Reps/FrD_Aged_4Reps_Merged_summits.bed

A_summits_extended_fname=${A_summits_fname%.bed}_${radias}bp_extended.bed
#echo ${A_summits_extended_fname}



awk -v var=${radias} '$5> 5 && $5< 100 {print $1"\t"$2-var"\t"$3+var}' ${A_summits_fname} > ${A_summits_extended_fname}

#catcatenate new files
cancat_output=${outdir}Young_and_Aged_summits_cancatenated.bed
echo ${cancat_output}
cat ${Y_summits_extended_fname} ${A_summits_extended_fname} > ${cancat_output}

sorted_output=${cancat_output%.bed}_sorted.bed
echo ${sorted_output}
sortBed -i ${cancat_output} > ${sorted_output}

merged_output=${sorted_output%.bed}_merged.bed
mergeBed -i ${sorted_output} -d ${distance_cutoff} > ${merged_output}
Bled_output=${merged_output%.bed}_Blacklist_Removed.bed
subtractBed -a ${merged_output} -b mm10_blacklist_sloped_5000.bed -A > ${Bled_output}
echo "****    Job done, output is: " ${Bled_output}



# cat /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Aged/Rep1/FrD_Aged_Rep1_peaks.narrowPeak \
# /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Aged/Rep2/FrD_Aged_Rep2_peaks.narrowPeak \
# /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Aged/Rep3/FrD_Aged_Rep3_peaks.narrowPeak \
# /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Aged/Rep4/FrD_Aged_Rep4_peaks.narrowPeak \
# /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Young/Rep1/FrD_Young_Rep1_peaks.narrowPeak \
# /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Young/Rep2/FrD_Young_Rep2_peaks.narrowPeak \
# /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Young/Rep3/FrD_Young_Rep3_peaks.narrowPeak \
# /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Young/Rep4/FrD_Young_Rep4_peaks.narrowPeak > /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Aged_and_Young_Cancatenated/FrD_Aged_and_Young_Cancatenated.bed

# sortBed -i /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Aged_and_Young_Cancatenated/FrD_Aged_and_Young_Cancatenated.bed > /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Aged_and_Young_Cancatenated/FrD_Aged_and_Young_Cancatenated_sorted.bed

# mergeBed -i /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Aged_and_Young_Cancatenated/FrD_Aged_and_Young_Cancatenated_sorted.bed -d 100 > /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Aged_and_Young_Cancatenated/FrD_Aged_and_Young_Cancatenated_sorted_merged.bed

# subtractBed -a /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Aged_and_Young_Cancatenated/FrD_Aged_and_Young_Cancatenated_sorted_merged.bed -b mm10_blacklist_sloped_5000.bed -A > /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_Aged_and_Young_Cancatenated/FrD_Aged_and_Young_Cancatenated_sorted_merged_BLed.bed

