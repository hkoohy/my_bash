#!/bin/bash


# Note that because I wanted to do a receprical analysis (promoter vs RSS) use one of these
#as true data and the other as the background.


target_seqs=/bi/group/sysgen/Hashem/VDJ_Analysis/VDJ_IgK/IgK_gene_RSS_regions.fasta
background=/bi/group/sysgen/Hashem/VDJ_Analysis/VDJ_IgK/IgK_gene_promoter_regions.fasta
output_dir=/bi/group/sysgen/Hashem/VDJ_Analysis/VDJ_IgK/Homer_Outputs_RSS_vs_Promoter

findMotifs.pl ${target_seqs} fasta ${output_dir} -fasta ${background} -homer2


