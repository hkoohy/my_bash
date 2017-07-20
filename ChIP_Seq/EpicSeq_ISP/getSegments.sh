#!/bin/bash
n_states=$1
mm10_region=/bi/group/sysgen/Hashem/ISP_Segmentation_Analysis/EpicSeg_Output/Young_500bp_refined_regions.bed
conditions_dir=/bi/group/sysgen/Hashem/ISP_Segmentation_Analysis/EpicSeg_Output/
output_dir=/bi/group/sysgen/Hashem/ISP_Segmentation_Analysis/EpicSeg_Output/S${n_states}
echo "Started getting segments!"


epicseg segment -c Young:${conditions_dir}Young_500bp_norm.txt \
-c Aged:${conditions_dir}Aged_500bp_norm.txt \
--regions ${mm10_region} \
--outdir ${output_dir} \
--nstates ${n_states} \
--prefix S_${n_states} \
--annot Down_Genes:/bi/group/sysgen/Hashem/ISP_RNA/FrD/Ribo0_FrD_Aged_Down_mm10.bed \
--annot Up:/bi/group/sysgen/Hashem/ISP_RNA/FrD/Ribo0_FrD_Aged_Up_mm10.bed \
--annot Random:/bi/group/sysgen/Hashem/ISP_RNA/500_Randomly_Picked_Genes.bed
 
