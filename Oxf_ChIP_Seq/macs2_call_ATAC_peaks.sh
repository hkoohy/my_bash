#!/bin/bash
# ***************** NOTE *******************
#for some of these commands you need to ask more memory than what is available by default. In particular:
# qsub  -cwd -V -b y -l h_vmem=10G -j y -o Output_qsub ./this_sh_file.sh
# ********************* End of Note *************** 

bam_fname=$1


name=${bam_fname%.bam}


atac_bam_dir='/ifs/projects/proj077/backup/from_Nicholas/nicholas_Bams/'
atac_macs_output_dir='/ifs/projects/proj077/backup/from_Nicholas/MACS2_Outputs'



full_bam_fname=${atac_bam_dir}${bam_fname}
full_output=${atac_macs_output_dir}/${name}

echo ${full_bam_fname}
echo $name
echo ${full_output}

# thp1_atac_Arg_fname=${atac_bam_dir}THP1_ATAC_Arg.bam
# thp1_atac_NoArg_fname=${atac_bam_dir}THP1_ATAC_noArg.bam

# stim_atac_Arg_fname=${atac_bam_dir}Stim_Tcell_ATAC_Arg.bam
#stim_atac_NoArg_fname=${atac_bam_dir}Stim_Tcell_ATAC_noArg.bam

################### for ATAC-seq ##########
macs2 callpeak -t ${full_bam_fname} \
-g hs \
-n ${name} \
--nomodel --shift 25 --extsize 50 -q 0.01 \
--outdir ${full_output}
