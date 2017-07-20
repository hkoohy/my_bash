#!/bin/bash
n_states=3
output_dir=/bi/group/sysgen/Hashem/VDJ_Analysis/VDJ_IgK/EpicSeg_Analysis_2017/EpicSeq_Output/S${n_states}

epicseg report --model ${output_dir}/S${n_states}model.txt \
--segments ${output_dir}/S${n_states}segmentation.bed \
--annot VGenes:/bi/group/sysgen/Hashem/VDJ_Analysis/VDJ_IgK/EpicSeg_Analysis_2017/V_IgK_Genes.bed \
--annot Active:/bi/group/sysgen/Hashem/VDJ_Analysis/VDJ_IgK/EpicSeg_Analysis_2017/V_IgK_Genes_Active.bed \
--annot Random:/bi/group/sysgen/Hashem/VDJ_Analysis/VDJ_IgK/EpicSeg_Analysis_2017/IgK_randomly_generated_features.bed \
--outdir ${output_dir} \
--colors ${output_dir}/3S_Colors.txt \
--labels ${output_dir}/3S_Labels.txt \
--prefix Report3S 