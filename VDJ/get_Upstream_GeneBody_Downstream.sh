VDJ='/bi/scratch/Hashem/VDJ_Data/Annotations/VDJ_Annotations_original.bed'
echo $VDJ

# get gene body: a 200bp is added to 3' side of genes in order for it to contain RSS,:note all genes are in - strand therefore it is added to 3'side
GENE_BODY='/bi/scratch/Hashem/VDJ_Data/Annotations/GeneBody_VDJ_Annotations.bed'

awk '{print $1"\t"$2"\t"$3+200"\t"$4"\t"$5"\t"$6}' $VDJ > $GENE_BODY
wait
#get 1000bp Upstream (from the new upstream: again all genes are - strand)
UPSTREAM='/bi/scratch/Hashem/VDJ_Data/Annotations/Upstream_VDJ_Annotations.bed'
awk '{print $1"\t"$3+200"\t"$3+1200"\t"$4"\t"$5"\t"$6}' $VDJ > $UPSTREAM

wait
#get 1000bp downstream 
DOWNSTREAM='/bi/scratch/Hashem/VDJ_Data/Annotations/Downstream_VDJ_Annotations.bed'
awk '{print $1"\t"$2-1000"\t"$2"\t"$4"\t"$5"\t"$6}' $VDJ > $DOWNSTREAM

#get full 1000 upstream+ genebody(real gene body +200) + 1000 upstream
wait

FULL='/bi/scratch/Hashem/VDJ_Data/Annotations/Downstream_Genebody_Upstream_VDJ_Annotations.bed'
awk '{print $1"\t"$2-1000"\t"$3+1200"\t"$4"\t"$5"\t"$6}' $VDJ > $FULL