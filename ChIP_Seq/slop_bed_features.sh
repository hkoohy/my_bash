#!/bin/bash


# to slop feature in a bed file

#slopBed -i /bi/group/sysgen/Hashem/ISP_RNA/FrBC/nucRNA/nucRNA_frBC_Aged_Down_DEGs.bed -l 100000 -r 0 -s  -g /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Annotations/mm10_chrom_sizes > /bi/group/sysgen/Hashem/ISP_RNA/FrBC/nucRNA/nucRNA_frBC_Aged_Down_DEGs_sloped_L100000_R0.bed


slopBed -i /bi/group/sysgen/Hashem/ISP_RNA/FrBC/nucRNA/nucRNA_frBC_Aged_Up_DEGs.bed -l 100000 -r 0 -s  -g /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Annotations/mm10_chrom_sizes > /bi/group/sysgen/Hashem/ISP_RNA/FrBC/nucRNA/nucRNA_frBC_Aged_Up_DEGs_sloped_L100000_R0.bed