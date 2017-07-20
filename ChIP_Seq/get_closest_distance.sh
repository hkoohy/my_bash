#!/bin/bash
module load bedtools

IgK_V_Genes_fname=/bi/group/sysgen/Hashem/VDJ_Analysis/VDJ_IgK/IgK_genes.bed
PU1=/bi/group/sysgen/Hashem/VDJ_Analysis/MACS2_OUTPUT/PU1/PU1_summits_IgK.bed
P300=/bi/group/sysgen/Hashem/VDJ_Analysis/MACS2_OUTPUT/P300/P300_summits_IgK.bed
H3K27ME3=/bi/group/sysgen/Hashem/VDJ_Analysis/MACS2_OUTPUT/H3K27ME3_summits_IgK.bed
YY1=/bi/group/sysgen/Hashem/VDJ_Analysis/MACS2_OUTPUT/YY1_summits_IgK.bed
IRF4=/bi/group/sysgen/Hashem/VDJ_Analysis/MACS2_OUTPUT/IRF4_summits_IgK.bed
RAD21=/bi/group/sysgen/Hashem/VDJ_Analysis/MACS2_OUTPUT/RAD21_summits_IgK.bed
DHS=/bi/group/sysgen/Hashem/VDJ_Analysis/MACS2_OUTPUT/DHS_summits_IgK.bed
PAX5=/bi/group/sysgen/Hashem/VDJ_Analysis/MACS2_OUTPUT/PAX5_summits_IgK.bed
H3K4ME3=/bi/group/sysgen/Hashem/VDJ_Analysis/MACS2_OUTPUT/H3K4ME3_summits_IgK.bed
H3K4ME1=/bi/group/sysgen/Hashem/VDJ_Analysis/MACS2_OUTPUT/H3K4ME1_summits_IgK.bed
H3K9AC=/bi/group/sysgen/Hashem/VDJ_Analysis/MACS2_OUTPUT/H3K9AC_summits_IgK.bed
H3K4ME2=/bi/group/sysgen/Hashem/VDJ_Analysis/MACS2_OUTPUT/H3K4ME2_summits_IgK.bed
MED1=/bi/group/sysgen/Hashem/VDJ_Analysis/MACS2_OUTPUT/MED1_summits_IgK.bed
EBF=/bi/group/sysgen/Hashem/VDJ_Analysis/MACS2_OUTPUT/EBF_summits_IgK.bed
CTCF=/bi/group/sysgen/Hashem/VDJ_Analysis/MACS2_OUTPUT/CTCF_summits_IgK.bed

closestBed -a $IgK_V_Genes_fname -b $PU1 $P300 -mdb each -d
#$H3K27ME3 $YY1 $IRF4 $RAD21 $DHS $PAX5 $H3K4ME3 $H3K4ME1 $H3K9AC $H3K4ME2 $MED1 $EBF $CRCF -mdb each -d

echo $IgK_V_Genes_fname

#head $IgK_V_Genes_fname