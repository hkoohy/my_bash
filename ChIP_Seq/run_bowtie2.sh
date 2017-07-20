echo "bowtie2 --maxins 1000 --dovetail -p 4 -t --phred33 -x /bi/scratch/Genomes/Mouse/GRCm38/Mus_musculus.GRCm38 -1 lane7_RAG_FrA_TAAGGC_TAGATC_L007_R1_val_1.fq.gz -2 lane7_RAG_FrA_TAAGGC_TAGATC_L007_R2_val_2.fq.gz | samtools view -bS - > lane7_RAG_FrA_TAAGGC_TAGATC_L007_maxins1000_dovetail.bam" | qsub -cwd -l h_vmem=20G -pe cores 4 -V -j y -o bowtie2_dovetail1.output -N bowtie2_dovetail1 -m eas -M hashem.koohy@babraham.ac.uk

#run BWA index
echo "bwa index Mus_musculus_GRCm38.fa" | qsub -cwd -l h_vmem=10G -V -j y -o bowtie_index.output -N bowtie_index -m eas -M koohyh@babraham.ac.uk

#run bwa mem

echo "bwa mem -t 4 Mus_musculus_GRCm38.fa lane7_RAG_FrA_TAAGGC_TAGATC_L007_R1_val_1.fq lane7_RAG_FrA_TAAGGC_TAGATC_L007_R2_val_2.fq > lane7_FrA_bwa.sam" | qsub -cwd -l h_vmem=20G -pe cores 4 -V -j y -o bwa_2.output  -N bwa_mem -m eas -M koohyh@babraham.ac.uk