#!/bin/bash
n_states=$1
kappa_region=/bi/group/sysgen/Hashem/VDJ_Analysis/VDJ_IgK/IgK_Locus.bed
counts=/bi/group/sysgen/Hashem/VDJ_Analysis/VDJ_IgK/EpicSeg_Analysis/EpicSeq_Output/kappa_counts_200bp.txt
output_dir=/bi/group/sysgen/Hashem/VDJ_Analysis/VDJ_IgK/EpicSeg_Analysis/EpicSeq_Output/S${n_states}
echo "Started getting segments!"


epicseg segment -c ${counts} \
--regions ${kappa_region} \
--outdir ${output_dir} \
--nstates ${n_states} \
--prefix S${n_states} \
--annot VGenes:/bi/group/sysgen/Hashem/VDJ_Analysis/VDJ_IgK/IgK_genes.bed \
--annot Active:/bi/group/sysgen/Hashem/VDJ_Analysis/VDJ_IgK/IgK_frD_Young_Active_genes.bed \
--annot Random:/bi/group/sysgen/Hashem/VDJ_Analysis/VDJ_IgK/IgK_randomly_generated_features.bed 

