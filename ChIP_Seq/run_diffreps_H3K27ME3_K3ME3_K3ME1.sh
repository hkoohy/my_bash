#!/bin/bash

#Note: the authors recommend to use fragments size 0 for the paired-end sequences 
#Note2: core in your qsup must be equal to --nproc in this perl code
#Note3: to run on a node: qsub -cwd -l h_vmem=4G -pe cores 4 -V -o h3k4me3_diffreps.output -e h3k4me3_diffreps.err run_diffreps.sh
echo "Started diffreps, this may take a while to finish. The perl script sits in /bi/apps/perl_modules/bin/"
perl /bi/apps/perl_modules/bin/diffReps.pl \
--control /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/Bed_Files/H3K4ME1/H3K4ME1_FrBC_Young_Merged_3_reps.bed \
/bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/Bed_Files/H3K4ME3/H3K4ME3_FrBC_Young_Merged_Sorted.bed \
/bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/Bed_Files/H3K27ME3/H3K27ME3_FrBC_Young_Merged_4_reps.bed \
--treatment /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/Bed_Files/H3K4ME1/H3K4ME1_FrBC_Old_Merged_3_reps.bed \
/bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/Bed_Files/H3K4ME3/H3K4ME3_FrBC_Aged_Merged_Sorted.bed \
/bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/Bed_Files/H3K27ME3/H3K27ME3_FrBC_Old_Merged_4_reps.bed \
--chrlen /bi/scratch/Hashem/Genome_Sizes/mm10.genome.size \
--report /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/DiffReps_Results/three_histone_marks/Aged_vs_Young_3_Histones \
#--btr /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/INPUT/Input_Young_and_Old_Merged_16_Percent_Pooled_cleanedup_sorted_dupremoved.bed \
#--bco /bi/group/sysgen/Hashem/Jeremy_Cleanedup_Data/INPUT/Input_Young_and_Old_Merged_16_Percent_Pooled_cleanedup_sorted_dupremoved.bed \
--frag 0 \
--nproc 4\
--nsd s\
--bkg 2.0


echo "Job finished\n"
