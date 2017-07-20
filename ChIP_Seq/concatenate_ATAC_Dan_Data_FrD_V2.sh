#!/bin/bash
# get filtered narrow peaks 
# NOTE: MT instances manully removed from starting bed files.
#NOTE2: features with pval less than 5 and greater than 300 have been removed. Less than 5 to
# filter out less condfident, more than 100 to remove high signal regions which are homologue to MT

radias=250
distance_cutoff=100 #peaks shroter than this will be merged

outdir=/bi/group/sysgen/Hashem/ISP_from_Dan/MACS_Outputs/FrD_ATAC_Dan/ATAC_FrD_Aged_and_Young_Concatenated_V2/
Y_npeaks_fname=/bi/group/sysgen/Hashem/ISP_from_Dan/MACS_Outputs/FrD_ATAC_Dan/FrD_Y_2Reps_Merged/ATAC_FrD_Y_2Reps_Merged_peaks.narrowPeak

Y_npeaks_filtered_fname=${Y_npeaks_fname%.narrowPeak}_filtered.narrowPeak
echo ${Y_npeaks_filtered_fname}



awk -v var=${radias} '$8> 5 && $8< 300  {print $0}' ${Y_npeaks_fname} > ${Y_npeaks_filtered_fname}

A_npkeas_fname=/bi/group/sysgen/Hashem/ISP_from_Dan/MACS_Outputs/FrD_ATAC_Dan/FrD_A_2Reps_Merged/ATAC_FrD_A_2Reps_Merged_peaks.narrowPeak

A_npeaks_filtered_fname=${A_npkeas_fname%.narrowPeak}_filtered.narrowPeak
echo ${A_npeaks_filtered_fname}



awk -v var=${radias} '$8> 5 && $8< 300 {print $0}' ${A_npkeas_fname} > ${A_npeaks_filtered_fname}

# #catcatenate new files
cancat_output=${outdir}Young_and_Aged_narrowpeaks_cancatenated.bed
echo ${cancat_output}
cat ${Y_npeaks_filtered_fname} ${A_npeaks_filtered_fname} > ${cancat_output}

sorted_output=${cancat_output%.bed}_sorted.bed
echo ${sorted_output}
sortBed -i ${cancat_output} > ${sorted_output}

merged_output=${sorted_output%.bed}_merged.bed
mergeBed -i ${sorted_output} -d ${distance_cutoff} > ${merged_output}
Bled_output=${merged_output%.bed}_Blacklist_Removed.bed
subtractBed -a ${merged_output} -b mm10_blacklist_sloped_5000.bed -A > ${Bled_output}
echo "****    Job done, output is: " ${Bled_output}

