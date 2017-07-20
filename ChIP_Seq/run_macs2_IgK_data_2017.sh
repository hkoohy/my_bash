
#!/bin/bash

#For some of these commands you need to ask more memory than what is available by default. In particular:
# -cwd -V -b y -l h_vmem=10G -j y -o H3K4ME1_BDG ./run_macs2.sh
# ********************* End of Note *************** 

bams_dir=/bi/group/sysgen/Hashem/VDJ_Analysis/VDJ_IgK/Bam_Files_2017/
output_dir=/bi/group/sysgen/Hashem/VDJ_Analysis/VDJ_IgK/MACS_Output/New_Datasets_2017/
input_dir=/bi/scratch/for_Hashem_from_Louise/Igk_BAM_files/Inputs/




#  #IKAROS (SE, without IN)
macs2 callpeak -t ${bams_dir}SRR1917137_Ikaros_ChIP-Seq_proB_cells_1_trimmed.fq.gz_bowtie2_Sorted.bam \
--outdir ${output_dir}IKAROS \
-c ${input_dir}SRR1917140_Input_proB_cells_1.fastq.gz_bowtie.bam \
-g mm -n IKAROS -f BAM -p 0.00001

 #BRG1 (SE, without IN)

macs2 callpeak -t ${bams_dir}GSM987804_SRR543407_pro_B__H3K4me2_ChIP_seq_1_trimmed.fq_sorted_Sorted.bam \
--outdir ${output_dir}BRG1 \
-c ${input_dir}SRR1917140_Input_proB_cells_1.fastq.gz_bowtie.bam \
-g mm -n BRG1 -f BAM -p 0.00001


##E2A 
macs2 callpeak -t ${bams_dir}GSM546523_Sample7.1.RAG1KO-E2A_Sorted.bam \
--outdir ${output_dir}E2A \
-c ${input_dir}lane2_Rag--_input.2_ACTTGA_L002_R1_val_bowtie.bam \
-g mm -n E2A -f BAM -p 0.00001

