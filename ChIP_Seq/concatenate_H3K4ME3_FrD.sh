#!/bin/bash

# get extended summits (summits plus/minus radia)
radias=250
outdir=/bi/group/sysgen/Hashem/Claudia_H3K4ME3/MACS_Output/
Y_summits_fname=/bi/group/sysgen/Hashem/Claudia_H3K4ME3/MACS_Output/H3K4ME3_frD_Young/H3K4ME3_FrD_Young_Merged_summits.bed

Y_summits_extended_fname=${Y_summits_fname%.bed}_${radias}bp_extended.bed
#echo ${Y_summits_extended_fname}

awk -v var=${radias} '{print $1"\t"$2-var"\t"$3+var}' ${Y_summits_fname} > ${Y_summits_extended_fname}

A_summits_fname=/bi/group/sysgen/Hashem/Claudia_H3K4ME3/MACS_Output/H3K4ME3_frD_Aged/H3K4ME3_FrD_Aged_Merged_summits.bed

A_summits_extended_fname=${A_summits_fname%.bed}_${radias}bp_extended.bed
#echo ${A_summits_extended_fname}

awk -v var=${radias} '{print $1"\t"$2-var"\t"$3+var}' ${A_summits_fname} > ${A_summits_extended_fname}

#catcatenate new files
cancat_output=${outdir}Young_and_Aged_summits_cancatenated.bed
echo ${cancat_output}
cat ${Y_summits_extended_fname} ${A_summits_extended_fname} > ${cancat_output}

sorted_output=${cancat_output%.bed}_sorted.bed
echo ${sorted_output}
sortBed -i ${cancat_output} > ${sorted_output}

merged_output=${sorted_output%.bed}_merged.bed
mergeBed -i ${sorted_output} -d 100 > ${merged_output}
Bled_output=${merged_output%.bed}_Blacklist_Removed.bed
subtractBed -a ${merged_output} -b mm10_blacklist_sloped_5000.bed -A > ${Bled_output}
echo "****    Job done, output is: " ${Bled_output}

