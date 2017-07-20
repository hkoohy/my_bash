#!/bin/bash

bed_fname=$1
saf_fname=${bed_fname%.bed}.saf
printf "GeneID\tChr\tStart\tEnd\tStrand\n" > ${saf_fname}
awk '{print$1"_"$2"_"$3"\t"$1"\t"$2"\t"$3"\t+"}' ${bed_fname} >> ${saf_fname}
