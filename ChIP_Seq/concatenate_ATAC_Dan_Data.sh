#!/bin/bash
# get extended summits (summits plus/minus radia)
# NOTE: MT instances manully removed from starting bed files.
#NOTE2: features with pval less than 5 and greater than 100 have been removed. Less than 5 to
# filter out less condfident, more than 100 to remove high signal regions which are homologue to MT

radias=250
distance_cutoff=100 #peaks shroter than this will be merged

outdir=/bi/group/sysgen/Hashem/ISP_from_Dan/MACS_Outputs/FrBC_ATAC_Dan/ATAC_FrBC_Aged_and_Young_Concatenated/
Y_summits_fname=/bi/group/sysgen/Hashem/ISP_from_Dan/MACS_Outputs/FrBC_ATAC_Dan/FrBC_Y_2Reps_Merged/ATAC_FrBC_Y_2Reps_Merged_summits.bed

Y_summits_extended_fname=${Y_summits_fname%.bed}_${radias}bp_extended.bed
#echo ${Y_summits_extended_fname}



awk -v var=${radias} '$5> 5 && $5< 100  {print $1"\t"$2-var"\t"$3+var}' ${Y_summits_fname} > ${Y_summits_extended_fname}

A_summits_fname=/bi/group/sysgen/Hashem/ISP_from_Dan/MACS_Outputs/FrBC_ATAC_Dan/FrBC_A_2Reps_Merged/ATAC_FrBC_A_2Reps_Merged_summits.bed

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

