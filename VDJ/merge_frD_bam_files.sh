#!/bin/bash

DIR="/bi/group/sysgen/Hashem/VDJ_Analysis/VDJ_Aged_vs_Young/frD_Aged_Bams/"

#Aged
#samtools merge ${DIR}frD_Aged_A2D_Rep1.bam ${DIR}lane6_CTTGTA_A2_D_L006_R.J1.unique_V.bam ${DIR}lane6_CTTGTA_A2_D_L006_R.J2.unique_V.bam ${DIR}lane6_CTTGTA_A2_D_L006_R.J3.unique_V.bam ${DIR}lane6_CTTGTA_A2_D_L006_R.J4.unique_V.bam


#samtools merge ${DIR}frD_Aged_A2D_Rep2.bam  ${DIR}lane2_A2D_TGACCA_L002_R.J1.unique_V.bam  ${DIR}lane2_A2D_TGACCA_L002_R.J2.unique_V.bam  ${DIR}lane2_A2D_TGACCA_L002_R.J3.unique_V.bam  ${DIR}lane2_A2D_TGACCA_L002_R.J4.unique_V.bam  

#samtools merge ${DIR}frD_Aged_A1D.bam ${DIR}lane2_A1D_CGATGT_L002_R.J1.unique_V.bam ${DIR}lane2_A1D_CGATGT_L002_R.J2.unique_V.bam ${DIR}lane2_A1D_CGATGT_L002_R.J3.unique_V.bam ${DIR}lane2_A1D_CGATGT_L002_R.J4.unique_V.bam

#Young

DIR_Young="/bi/group/sysgen/Hashem/VDJ_Analysis/VDJ_Aged_vs_Young/frD_Young_Bams/"

#samtools merge ${DIR_Young}frD_Young_WT_D.bam ${DIR_Young}lane6_TGACCA_WT_D_L006_R.J1.unique_V.bam ${DIR_Young}lane6_TGACCA_WT_D_L006_R.J2.unique_V.bam ${DIR_Young}lane6_TGACCA_WT_D_L006_R.J3.unique_V.bam ${DIR_Young}lane6_TGACCA_WT_D_L006_R.J4.unique_V.bam

#samtools merge ${DIR_Young}frD_Young_Y2_D.bam ${DIR_Young}lane6_GCCAAT_Y2_D_L006_R.J1.unique_V.bam ${DIR_Young}lane6_GCCAAT_Y2_D_L006_R.J2.unique_V.bam ${DIR_Young}lane6_GCCAAT_Y2_D_L006_R.J3.unique_V.bam ${DIR_Young}lane6_GCCAAT_Y2_D_L006_R.J4.unique_V.bam

#samtools merge ${DIR_Young}frD_Young_YD3.bam  ${DIR_Young}lane6_YD3_CAGATC_L006_R.J1.unique_V.bam ${DIR_Young}lane6_YD3_CAGATC_L006_R.J2.unique_V.bam ${DIR_Young}lane6_YD3_CAGATC_L006_R.J3.unique_V.bam ${DIR_Young}lane6_YD3_CAGATC_L006_R.J4.unique_V.bam