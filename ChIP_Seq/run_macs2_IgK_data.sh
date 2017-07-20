#!/bin/bash
# ***************** NOTE *******************
#Although some of these data were used for IgH paper, I had to ask Felix to remap them
# and call peaks again. The main reason being that I realized that Pax5 data was
#originally paired-end but had been mapped as a single end. So all IgH data were checked
#by Felix on 28-06-2016 and if needed remapped to mm9.

#For some of these commands you need to ask more memory than what is available by default. In particular:
# -cwd -V -b y -l h_vmem=10G -j y -o H3K4ME1_BDG ./run_macs2.sh
# ********************* End of Note *************** 

bams_dir=/bi/group/sysgen/Hashem/VDJ_Analysis/VDJ_IgK/Bam_Files/
output_dir=/bi/group/sysgen/Hashem/VDJ_Analysis/VDJ_IgK/MACS_Output/New_Datasets/
input_dir=/bi/group/sysgen/Hashem/VDJ_Analysis/INPUT_Files/


# echo ${bams_dir}SRR099835_GSM672401_CTCF.bam
# echo ${bams_dir}SRR099835_GSM672401_CTCF.bam


 #### ***************************** NOTE *********************
##   **********        These datasets were not used in IgH paper*******
### **********************************************************

#  #IKAROS (SE, without IN)
# macs2 callpeak -t ${bams_dir}SRR1057447_Ikaros.bam \
# --outdir ${output_dir}IKAROS \
# -c ${input_dir}SRR1917140_Input_proB_cells_1.fastq.gz_bowtie.bam \
# -g mm -n IKAROS -f BAM -p 0.00001


# #H3K4ME1 (with INPUT)
# macs2 callpeak -t ${bams_dir}SRR2532665_H3K4me1_proB.bam \
# -c ${input_dir}INPUT_EBF_Merged_Mapped_Only.bam \
# --outdir ${output_dir}SRR2532665_H3K4me1_proB \
# -g mm -n H3K4ME1 -f BAM -p 0.00001 




# #YY1 (S proB, with IN)
# macs2 callpeak -t ${bams_dir}SRR2532649_YY1_proB.bam \
# --outdir ${output_dir}SRR2532649_YY1_proB \
# -c ${input_dir}YY1_ProB.bam \
# -g mm -n YY1ProB -f BAM -p 0.00001 


# #YY1 (S preB, with IN)
# macs2 callpeak -t ${bams_dir}SRR2532651_YY1_preB.bam \
# --outdir ${output_dir}SRR2532651_YY1_preB.bam \
# -c ${input_dir}YY1_PreB.bam \
# -g mm -n YY1PreB -f BAM -p 0.00001 


# #CTCF (PE, without INPUT)
# macs2 callpeak -t ${bams_dir}SRR397837_CTCF.bam \
# --outdir ${output_dir}SRR397837_CTCF \
# -g mm -n CTCF -f BAM -p 0.00001 




# #E2A (Rep1, with INPUT)
# macs2 callpeak -t ${bams_dir}GSM546523_E2A_Rep1.bam \
# --outdir ${output_dir}E2A_Rep1 \
# -c ${input_dir}SRR057395_Input2_1_trimmed.fq.bam \
# -g mm -n E2ARep1 -f BAM -p 0.00001 


# #E2A (Rep2, with INPUT)
# macs2 callpeak -t ${bams_dir}GSM546523_E2A_Rep2.bam \
# --outdir ${output_dir}E2ARep2 \
# -c ${input_dir}SRR057395_Input2_1_trimmed.fq.bam \
# -g mm -n E2ARep2 -f BAM -p 0.00001 

# #Brwd1 (Rep1 with INPUT)
# macs2 callpeak -t ${bams_dir}SRR1652697_Brwd1_replicate1_1_NCBIM37_bowtie.bam \
# --outdir ${output_dir}SRR1652697_Brwd1_Rep1 \
# -c ${input_dir}SRR1652703_Input_replicate1_1_NCBIM37_bowtie.bam \
# -g mm -n BRWD1Rep1 -f BAM -p 0.00001 

# #Brwd1 (Rep2 with INPUT)
# macs2 callpeak -t ${bams_dir}SRR1652698_Brwd1_replicate2_1_NCBIM37_bowtie.bam \
# --outdir ${output_dir}SRR1652698_Brwd1_Rep2 \
# -c ${input_dir}SRR1652704_Input_replicate2_1_NCBIM37_bowtie.bam  \
# -g mm -n BRWD1Rep2 -f BAM -p 0.00001 

# #Brg1 ( with INPUT)
# macs2 callpeak -t ${bams_dir}SRR1917139_Brg1.bam \
# --outdir ${output_dir}BRG1 \
# -c ${input_dir}SRR1917140_Input_proB_cells_1.fastq.gz_bowtie.bam \
# -g mm -n BRG1 -f BAM -p 0.00001 



# #H3S10pK14AC (Rep1 with INPUT)
# macs2 callpeak -t ${bams_dir}SRR1652701_H3S10pK14Ac_replicate1_1_NCBIM37_bowtie.bam \
# --outdir ${output_dir}H3S10pK14AC_Rep1 \
# -c ${input_dir}SRR1652703_Input_replicate1_1_NCBIM37_bowtie.bam \
# -g mm -n H3S10pK14ACRep1 -f BAM -p 0.00001 

# #H3S10pK14AC (Re2 with INPUT)
# macs2 callpeak -t ${bams_dir}SRR1652702_H3S10pK14Ac_replicate2_1_NCBIM37_bowtie.bam \
# --outdir ${output_dir}H3S10pK14AC_Rep2 \
# -c ${input_dir}SRR1652704_Input_replicate2_1_NCBIM37_bowtie.bam \
# -g mm -n H3S10pK14ACRep2 -f BAM -p 0.00001 



# # ATAC seq Rep1
# macs2 callpeak -t ${bams_dir}SRR3382889_ATAC_preB_WT_rep1.bam --outdir ${output_dir}SRR3382889_ATAC_preB_WT_rep1
# -g mm -n ATACRep1 -f BAM -p 0.00001 --nomodel


# # ATAC seq Rep2
# macs2 callpeak -t ${bams_dir}SRR3382890_ATAC_preB_WT_rep2.bam --outdir ${output_dir}SRR3382890_ATAC_preB_WT_rep2
# -g mm -n ATACRep2 -f BAM -p 0.00001 --nomodel


 #### ***************************** NOTE *********************
##   **********        These datasets were used in IgH paper *******
### **********************************************************

# #CTCF (PE, without INPUT)
# macs2 callpeak -t ${bams_dir}SRR099835_GSM672401_CTCF.bam --outdir ${output_dir}CTCF \
# -g mm -n CTCF -f BAM -p 0.00001 --nomodel

# #DHS (PE, without INPUT)
# macs2 callpeak -t ${bams_dir}SRR499743_DHS.bam --outdir ${output_dir}DHS \
# -g mm -n DHS -f BAM -p 0.00001 --nomodel  --extsize 300

# #MED1(SE, with IN)
# macs2 callpeak -t ${bams_dir}SRR620145_Med1.bam --outdir ${output_dir}MED1 \
# -c ${input_dir}INPUT_GSM1038264_SRR620146_7_Merged_MED1_Mapped_Only.bam \
# -g mm -n MED1 -f BAM -p 0.00001

# #P300 (SE, with IN)
# macs2 callpeak -t ${bams_dir}SRR543411_p300.bam --outdir ${output_dir}P300 \
# -c ${input_dir}INPUT_GSM987812_SRR543415_pro-B_P300_FA_1.fastq.gz_bowtie_mapped_only.bam \
# -g mm -n P300 -f BAM -p 0.00001


# #IRF4 (SE, with IN)
# macs2 callpeak -t ${bams_dir}SRR1057446_IRF4.bam --outdir ${output_dir}IRF4 \
# -c ${input_dir}INPUT_IRF4_SRR1057449.bam \
# -g mm -n IRF4 -f BAM -p 0.00001


# #PU1(SE, without IN)
# macs2 callpeak -t ${bams_dir}SRR064918_PU_1.bam --outdir ${output_dir}PU1 \
# -g mm -n PU1 -f BAM -p 0.00001


# #YY1 (PE, with IN)
# macs2 callpeak -t ${bams_dir}SRR866262_Yy1.bam --outdir ${output_dir}YY1 \
# -c ${input_dir}INPUT_SRR866265_YY1.bam \
# -g mm -n YY1 -f BAM -p 0.00001 --nomodel

# #EBF (SE, with IN)
# macs2 callpeak -t ${bams_dir}SRR408700_GSM876622__EBF1.bam --outdir ${output_dir}EBF \
# -c ${input_dir}INPUT_EBF_Merged_Mapped_Only.bam \
# -g mm -n EBF -f BAM -p 0.00001 


# #PAX5 (PE, without IN)
# macs2 callpeak -t ${bams_dir}SRR499699_Pax5.bam --outdir ${output_dir}PAX5 \
# -g mm -n PAX5 -f BAM -p 0.00001 --nomodel

# #RAD21 (PE, without IN)
# macs2 callpeak -t ${bams_dir}SRR099837_GSM672403_Rad21.bam --outdir ${output_dir}RAD21 \
# -g mm -n RAD21 -f BAM -p 0.00001 --nomodel



# #H3K4ME3 (PE, with INPUT)
# macs2 callpeak -t ${bams_dir}Rag_H3K4me3_Inhouse.bam \
# -c ${input_dir}INPUT_H3k4me3.bam \
# --outdir ${output_dir}H3K4ME3 \
# -g mm -n H3K4ME3 -f BAM -p 0.00001 --nomodel --shift 37 --extsize 73


# #H3K4ME1 (with INPUT)
# macs2 callpeak -t ${bams_dir}SRR499709_H3K4me1.bam \
# -c ${input_dir}INPUT_EBF_Merged_Mapped_Only.bam \
# --outdir ${output_dir}H3K4ME1 \
# -g mm -n H3K4ME1 -f BAM -p 0.00001 



# #H3K9AC (with INPUT)
# macs2 callpeak -t ${bams_dir}SRR499718_H3K9ac.bam \
# -c ${input_dir}INPUT_EBF_Merged_Mapped_Only.bam \
# --outdir ${output_dir}H3K9AC \
# -g mm -n H3K9AC -f BAM -p 0.00001 



# #H3K4ME2 (with INPUT)
# macs2 callpeak -t ${bams_dir}SRR543407_H3K4me2.bam \
# -c ${input_dir}INPUT_GSM987812_SRR543415_pro-B_P300_FA_1.fastq.gz_bowtie_mapped_only.bam \
# --outdir ${output_dir}H3K4ME2 \
# -g mm -n H3K4ME2 -f BAM -p 0.00001 


# # ## H3K27ME3 is required to call braod peaks. macs1.4 behaves better for broad peaks therefore I will call macs1.4
# # #H3K27ME3 (with INPUT) with MACS1.4. NOTE: Since macs1.4 has no output flag, wherever you run this command, it 
# #will produce the output there.
# # macs14  -t /bi/group/sysgen/Hashem/VDJ_Analysis/VDJ_IgK/Bam_Files/SRR499722_H3K27me3.bam \ 
# # -c /bi/group/sysgen/Hashem/VDJ_Analysis/INPUT_Files/INPUT_EBF_Merged_Mapped_Only.bam -g mm -n H3K27ME3 \
# # -f BAM  --nomodel --shiftsize 73 --pvalue 0.01


# # macs14  -t /bi/group/sysgen/Hashem/VDJ_Analysis/VDJ_IgK/Bam_Files/New_Datasets/SRR2532659_H3K27me3_preB.bam \ 
# # -c /bi/group/sysgen/Hashem/VDJ_Analysis/INPUT_Files/SRR2532660_H3K27me3_pre-B_input_ChIP-seq_1_trimmed_NCBIM37_bowtie2.bam  -g mm -n H3K27ME3-preB \
# # -f BAM  --nomodel --shiftsize 73 --pvalue 0.01


# # macs14  -t /bi/group/sysgen/Hashem/VDJ_Analysis/VDJ_IgK/Bam_Files/New_Datasets/SRR2532657_H3K27me3_proB.bam \ 
# # -c /bi/group/sysgen/Hashem/VDJ_Analysis/INPUT_Files/SRR2532658_H3K27me3_pro-B_input_ChIP-seq_1_NCBIM37_bowtie.bam  -g mm -n H3K27ME3-proB \
# # -f BAM  --nomodel --shiftsize 73 --pvalue 0.01



# macs2 callpeak -t /bi/group/sysgen/Hashem/VDJ_Analysis/VDJ_IgK/Bam_Files/VH81X-Rag_nucRNA.1_bowtie.bam --outdir /bi/group/sysgen/Hashem/VDJ_Analysis/VDJ_IgK/MACS_Output/nucRNA -g mm -n nucRNA -f BAM -p 0.0001  --nomodel