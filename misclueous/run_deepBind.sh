#!/bin/bash

input_seq_fname=$1
output_fname=${input_seq_fname%.fa}_DeepBind_Scores.txt
motifs_fname=/Volumes/WIMM_ENZO/hashemk/Main_Data/ASS1_ATF4_Data/DeepBind_Analysis/motifs_of_interests.ids

echo ${input_seq_fname}
echo ${motifs_fname}
echo ${output_fname}


deepbind ${motifs_fname} < ${input_seq_fname}  >  ${output_fname}

