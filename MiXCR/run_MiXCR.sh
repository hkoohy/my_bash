#!/bin/bash

<<About
  Created: 08-10-2015

  Author: Hashem Koohh

  Running MiXCR and possibly preprossessing our data for that
About

echo "** Warning: make sure the hard-coded files and parameters are the right ones for your task. **"


#Data 
mixcr_data='/bi/group/sysgen/Hashem/MiXCR_Data/True_IgH'
mixcr_output='/bi/group/sysgen/Hashem/MiXCR_Data/MiXCR_Output/'

#load MiXCR
module load mixcr/1.6

V_file=${mixcr_data}/true_igh_R1.fastq.gz
J_file=${mixcr_data}/true_igh_R2.fastq.gz
JV_output=${mixcr_output}IgH_Data


echo 'J_file is: ' $J_file 
echo 'V_file is ' $V_file

echo '***================****'
echo 'running mixcr align'
echo '***================****'
mixcr align \
--loci IGH \
-OvjAlignmentOrder=JThenV \
--species mmu \
--save-description \
--report ${JV_output}_alignment_reports.log \
$J_file \
$V_flie \
${JV_output}_alignment.vdjca

echo "alignment was successfully done"
echo '***================****'
echo 'running mixcr assemble and exportClones now'
echo '***================****'
#echo ${mixcr_output}
for align_file in ${mixcr_output}*_alignment.vdjca
    do
      assemble_log_file=${align_file%alignment.vdjca}assembleReports.log
      assemble_output_file=${align_file%alignment.vdjca}clones.clns
      #echo $assemble_log_file
      #echo $assemble_output_file '******'
      mixcr assemble \
	  --report $assemble_log_file \
	  $align_file \
	  $assemble_output_file
      exprotClones_output_file=${align_file%alignment.vdjca}clones.txt
      mixcr exportClones \
	  $assemble_output_file \
	  $exprotClones_output_file
    done

echo "job done"
