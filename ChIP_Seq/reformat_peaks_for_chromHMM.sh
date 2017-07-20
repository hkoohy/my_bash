#!/bin/bash

fname=$1
output_fname=${fname%%.narrowPeak}
echo ${output_fname}.bed

awk '{print "chr"$1"\t"$2"\t"$3}' ${fname} > ${output_fname}.bed