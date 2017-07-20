#reads with mapq score lower than MAPQ will be ignored. The following is an exampel

echo "samtools view -q 42 -b lane3090_TCCTGAGC_TATCCTCT_Young4_L001_R1_val_1.GRCm38.bowtie2.bam > lane3090_TCCTGAGC_TATCCTCT_Young4_L001_R1_val_1.GRCm38.bowtie2_q42_filtered.bam" | qsub -cwd -l h_vmem=20G -pe cores 4 -V -j y -o MAPQ_YR4.output  -N FrBC_YR4 -m eas -M hashem.koohy@babraham.ac.uk