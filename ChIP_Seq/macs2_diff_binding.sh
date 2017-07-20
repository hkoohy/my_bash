#!/bin/bash


# macs2 callpeak -B -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrD/Aged/FrD_Aged_Merged_Reps/FrD_Aged_Four_Reps_Merged.bam \
# -n Aged --nomodel --extsize 120 \
# --outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_DiffBind_Output

# macs2 callpeak -B -t /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/Bam_Files/FrD/Young/FrD_Young_Merged_Reps/FrD_Young_Four_Reps_Merged.bam \
# -n Young --nomodel --extsize 120 \
# --outdir /bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_DiffBind_Output



############

bdg_dir=/bi/group/sysgen/Hashem/Andrew_ATAC_SEQ/mm10_BWA/MACS_OUTPUT/FrD_DiffBind_Output

macs2 bdgdiff --t1 ${bdg_dir}/Aged_treat_pileup.bdg \
--c1 ${bdg_dir}/Aged_control_lambda.bdg \
--t2 ${bdg_dir}/Young_treat_pileup.bdg \
--c2 ${bdg_dir}/Young_control_lambda.bdg \
--d1 78519174 --d2 87501236 -g 60 -l 120 --o-prefix frD_diff_Aged_vs_Young \
--outdir ${bdg_dir}


