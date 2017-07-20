#!/bin/bash

# To find out intervals (bed features) which are common in a set of bed files.
# requires bedtools 2.14.3 onwards. It also requires sorted bed filesl
# Note: The bedfile which has the highest number of peaks comes first as the base of comparison. The order of three remaining files are not really important.
# FrBC Young
merge_thr=100 # two features closer than this will be merged

echo "Please comment and uncomment regions accordingly, before running this script."


# FrBC Young
# peaks_dir='/bi/group/sysgen/Hashem/ISP_from_Dan/MACS_Outputs/FrBC_ATAC_Dan_MT_Removed/FrBC_ATAC_Young/'
# output_fname=${peaks_dir}FrBC_Young_Intersection.narrowPeak

# first_bed=${peaks_dir}FrBC_YR6_peaks.narrowPeak
# second_bed=${peaks_dir}FrBC_YR5_peaks.narrowPeak
# third_bed=${peaks_dir}FrBC_YR7_peaks.narrowPeak
# forth_bed=${peaks_dir}FrBC_YR8_peaks.narrowPeak

#FrBC Aged

# peaks_dir='/bi/group/sysgen/Hashem/ISP_from_Dan/MACS_Outputs/FrBC_ATAC_Dan_MT_Removed/FrBC_ATAC_Aged/'
# output_fname=${peaks_dir}FrBC_Aged_Intersection.narrowPeak

# first_bed=${peaks_dir}FrBC_AR6_peaks.narrowPeak
# second_bed=${peaks_dir}FrBC_AR7_peaks.narrowPeak
# third_bed=${peaks_dir}FrBC_AR8_peaks.narrowPeak
# forth_bed=${peaks_dir}FrBC_AR6_peaks.narrowPeak

# #### now concatenate files and merge the final file
# FrBC_Young_consensus_peaks_fname='/bi/group/sysgen/Hashem/ISP_from_Dan/MACS_Outputs/FrBC_ATAC_Dan_MT_Removed/FrBC_ATAC_Young/FrBC_Young_Intersection_consensus_merged_d100.bed'
# FrBC_Aged_consensus_peaks_fname='/bi/group/sysgen/Hashem/ISP_from_Dan/MACS_Outputs/FrBC_ATAC_Dan_MT_Removed/FrBC_ATAC_Aged/FrBC_Aged_Intersection_consensus_merged_d100.bed'
# FrBC_output_fname='/bi/group/sysgen/Hashem/ISP_from_Dan/MACS_Outputs/FrBC_ATAC_Dan_MT_Removed/FrBC_Young_and_Aged_Cated_sorted.bed'
# cat ${FrBC_Young_consensus_peaks_fname} ${FrBC_Aged_consensus_peaks_fname} | sort -k1,1 -k2,2n > ${FrBC_output_fname}

# mergeBed -d ${merge_thr} -i ${FrBC_output_fname} > ${FrBC_output_fname%.bed}_merged.bed




##################################################################
############################### FrD ########################
### FrD Young
# peaks_dir='/bi/group/sysgen/Hashem/ISP_from_Dan/MACS_Outputs/FrD_ATAC_Dan_MT_Removed/FrD_ATAC_Young/'
# output_fname=${peaks_dir}FrD_Young_Intersection.narrowPeak

# first_bed=${peaks_dir}FrD_YR6_peaks.narrowPeak
# second_bed=${peaks_dir}FrD_YR5_peaks.narrowPeak
# third_bed=${peaks_dir}FrD_YR7_peaks.narrowPeak
# forth_bed=${peaks_dir}FrD_YR8_peaks.narrowPeak

## FrD Aged
# peaks_dir='/bi/group/sysgen/Hashem/ISP_from_Dan/MACS_Outputs/FrD_ATAC_Dan_MT_Removed/FrD_ATAC_Aged/'
# output_fname=${peaks_dir}FrD_Aged_Intersection.narrowPeak

# first_bed=${peaks_dir}FrD_AR6_peaks.narrowPeak
# second_bed=${peaks_dir}FrD_AR5_peaks.narrowPeak
# third_bed=${peaks_dir}FrD_AR8_peaks.narrowPeak
# forth_bed=${peaks_dir}FrD_AR7_peaks.narrowPeak


# multiIntersectBed -i ${first_bed} ${second_bed} ${third_bed} ${forth_bed} > ${output_fname}



# # keep only regions which are present in at least 3 of the samples
# output_fname_consensus=${output_fname%.narrowPeak}_consensus.bed
# awk '$4>2{print $1"\t"$2"\t"$3}' ${output_fname} | grep -v '^chrom' > ${output_fname_consensus}


# output_fname_consensus_merged=${output_fname_consensus%.bed}_merged_d${merge_thr}.bed
# mergeBed -d ${merge_thr} -i ${output_fname_consensus} > ${output_fname_consensus_merged}





# # FrBC Young
# merge_thr=100 # two features closer than this will be merged

# peaks_dir='/bi/group/sysgen/Hashem/ISP_from_Dan/MACS_Outputs/FrBC_ATAC_Dan_MT_Removed/FrBC_ATAC_Young/'
# output_fname=${peaks_dir}FrBC_Young_Intersection.narrowPeak

# FrBC_YR5_fname=${peaks_dir}FrBC_YR5_peaks.narrowPeak
# FrBC_YR6_fname=${peaks_dir}FrBC_YR6_peaks.narrowPeak
# FrBC_YR7_fname=${peaks_dir}FrBC_YR7_peaks.narrowPeak
# FrBC_YR8_fname=${peaks_dir}FrBC_YR8_peaks.narrowPeak

# multiIntersectBed -i ${FrBC_YR6_fname} ${FrBC_YR5_fname} ${FrBC_YR7_fname} ${FrBC_YR8_fname}  -header -names YR6 YR5 YR7 YR8 > ${output_fname}

# # keep only regions which are present in at least 3 of the samples
# output_fname_consensus=${output_fname%.narrowPeak}_consensus.bed
# awk '$4>2{print $1"\t"$2"\t"$3}' ${output_fname} | grep -v '^chrom' > ${output_fname_consensus}


# output_fname_consensus_merged=${output_fname_consensus%.bed}_merged_d${merge_thr}.bed
# mergeBed -d ${merge_thr} -i ${output_fname_consensus} > ${output_fname_consensus_merged}

##############
###############

# #### now concatenate files and merge the final file
# FrD_Young_consensus_peaks_fname='/bi/group/sysgen/Hashem/ISP_from_Dan/MACS_Outputs/FrD_ATAC_Dan_MT_Removed/FrD_ATAC_Young/FrD_Young_Intersection_consensus_merged_d100.bed'
# FrD_Aged_consensus_peaks_fname='/bi/group/sysgen/Hashem/ISP_from_Dan/MACS_Outputs/FrD_ATAC_Dan_MT_Removed/FrD_ATAC_Aged/FrD_Aged_Intersection_consensus_merged_d100.bed'
# FrD_output_fname='/bi/group/sysgen/Hashem/ISP_from_Dan/MACS_Outputs/FrD_ATAC_Dan_MT_Removed/FrD_Young_and_Aged_Cated_sorted.bed'
# cat ${FrD_Young_consensus_peaks_fname} ${FrD_Aged_consensus_peaks_fname} | sort -k1,1 -k2,2n > ${FrD_output_fname}

# mergeBed -d ${merge_thr} -i ${FrD_output_fname} > ${FrD_output_fname%.bed}_merged.bed

