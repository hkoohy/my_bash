#!/bin/bash

pyatac ins --bam bi/group/sysgen/HelleATACseq/merged_samples/MKLS003_SL_001.bam \
--out MKLS003 --lower 20 --upper 1000 --smooth 10

#Note: the authors recommend to use fragments size 0 for the paired-end sequences 
#Note2: core in your qsup must be equal to --nproc in this perl code
#Note3: to run on a node: qsub -cwd -l h_vmem=4G -pe cores 4 -V -o h3k4me3_diffreps.output -e h3k4me3_diffreps.err run_diffreps.sh
echo "Started diffreps, this may take a while to finish. The perl script sits in /bi/apps/perl_modules/bin/"
#perl /bi/apps/perl_modules/bin/diffReps.pl \