#!/bin/sh
##########################################################################
## A script template for submitting batch jobs. To submit a batch job, 
## please type
##
##    qsub myprog.sh
##
## Please note that anything after the first two characters "#$" on a line
## will be treated as a SUN Grid Engine command.
##########################################################################

# The following to run programs in the current working directory
#$ -cwd

# Specify a queue
#$ -q batchq


# The following two lines will send an email notification when
# job is Ended/Aborted/Suspended - Please replace "UserName" with your username.
#
#$ -M haskoohy
#$ -m eas

module load subread

featureCounts -a /databank/igenomes/Homo_sapiens/UCSC/hg19/Annotation/Genes/genes_with_ERCC.gtf -o raw_read_counts_from_RNA_Tophat_mapped_v2.txt  -p -Q 30 -t exon -g gene_id -C -B /t1-data/user/haskoohy/Enzo_Group/New_RNA_Data/171116_K00198_0254_BHM5WLBBXX/New_RNA_Data.tophat/accepted_hits.bam


