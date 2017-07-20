#!/bin/bash
#note that chromosome naming must be consistant in your bed file and the genome you are looking at!
findMotifsGenome.pl /bi/group/sysgen/Hashem/VDJ_Analysis/MACS2_OUTPUT/CTCF/CTCF_Hihg_PV_Overlapping_ATAC_with_chr.bed mm9r \
/bi/group/sysgen/Hashem/Motif_Discovery/CTCF/ -size 200 -preparsedDir /bi/scratch/Hashem/homer_preparsed_dir