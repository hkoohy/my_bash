#!/bin/bash

factor_name=$1
input_dir=/bi/group/sysgen/Hashem/VDJ_Analysis/VDJ_IgK/MACS_Output/New_Datasets/
output_dir=/bi/group/sysgen/Hashem/VDJ_Analysis/VDJ_IgK/MACS_Output/New_Datasets/

#Narrow Peaks
narrow_peaks=${input_dir}${factor_name}/${factor_name}_peaks.narrowPeak
echo ${narrow_peaks}
narrow_peaks_IgK=${input_dir}${factor_name}/${factor_name}_peaks_IgK.narrowPeak
echo ${narrow_peaks_IgK}

awk '$1==6 && $2>67490000 && $3 < 70715000{print $0}' ${narrow_peaks} > ${narrow_peaks_IgK}

# summits

summits=${input_dir}${factor_name}/${factor_name}_summits.bed
echo ${summits}
summits_IgK=${input_dir}${factor_name}/${factor_name}_summits_IgK.bed
awk '$1==6 && $2>67490000 && $3 < 70715000{print $0}' ${summits}  > ${summits_IgK}
echo ${summits_IgK}


