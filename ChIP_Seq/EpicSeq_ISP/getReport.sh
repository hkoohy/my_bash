#!/bin/bash

n_states=$1
condition=$2
output_dir=/bi/group/sysgen/Hashem/ISP_Segmentation_Analysis/EpicSeg_Output/S${n_states}
name=nucRNA_Annotations_${condition}_S_${n_states}

if [ $condition == Young ]
then
  echo "Condition is Young"
  segs=${output_dir}/S_${n_states}segmentation_Young.bed

elif [ $condition == Aged ]
then
  echo "condtion is Aged"
  segs=${output_dir}/S_${n_states}segmentation_Aged.bed
else
  echo "Condition is unknown, accepted values are Young and Aged"
  exit 1
fi


epicseg report --model ${output_dir}/S_${n_states}model.txt \
--segments ${segs} \
--annot Down_Genes:/bi/group/sysgen/Hashem/ISP_RNA/FrBC/nucRNA_FrBC_Aged_Down_mm10.bed \
--annot Up:/bi/group/sysgen/Hashem/ISP_RNA/FrBC/nucRNA_FrBC_Aged_Up_mm10.bed \
--annot Random:/bi/group/sysgen/Hashem/ISP_RNA/500_Randomly_Picked_Genes.bed \
--outdir ${output_dir} \
--colors ${output_dir}/my4SColors.txt \
--labels ${output_dir}/my4SLabels.txt \
--prefix ${name}






# epicseg report --model ${output_dir}/S_${n_states}model.txt \
# --segments ${segs} \
# --annot Down_Genes:/bi/group/sysgen/Hashem/ISP_RNA/FrD/Ribo0_FrD_Aged_Down_mm10.bed \
# --annot Up:/bi/group/sysgen/Hashem/ISP_RNA/FrD/Ribo0_FrD_Aged_Up_mm10.bed \
# --annot Random:/bi/group/sysgen/Hashem/ISP_RNA/500_Randomly_Picked_Genes.bed \
# --outdir ${output_dir} \
# --colors ${output_dir}/S_${n_states}colors.txt \
#--prefix ${name}