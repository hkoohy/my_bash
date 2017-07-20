#!/bin/bash
n_states=$1
output_dir=/bi/group/sysgen/Hashem/VDJ_Analysis/VDJ_IgK/chromHMM_Analysis/chromHMM_output/S${n_states}
echo 'Output will be in '${output_dir}
mkdir -p ${output_dir};


java -mx800M -jar -Djava.awt.headless=true /bi/home/koohyh/ChromHMM/ChromHMM.jar LearnModel -d 0.00005  \
/bi/group/sysgen/Hashem/VDJ_Analysis/VDJ_IgK/chromHMM_Analysis/chromHMM_input ${output_dir}  ${n_states} mm9
