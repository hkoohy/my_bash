#!/bin/bash

#bedFile="/bi/group/sysgen/Hashem/Jeremy_Data/nucRNA/Aged_up_mm9.bed"
bedFile="/bi/group/sysgen/Hashem/Jeremy_Data/nucRNA/Aged_down_mm9.bed"
TssFile=${bedFile%.bed}_TSS.bed

echo $TssFile
echo ${bedFile}
awk '{
if ($6=="+")
 print "chr"$1"\t"$2"\t"$2"\t"$4"\t"$5"\t"$6
else
 print "chr"$1"\t"$3"\t"$3"\t"$4"\t"$5"\t"$6
}' ${bedFile} > ${TssFile}
