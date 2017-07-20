#!/bin/bash

bed_fname=$1
genome_fname='/bi/scratch/Hashem/Genomes/GRCm38_fasta/Mus_musculus.GRCm38.fa'
output_fname=${bed_fname%.bed}.fasta
mess_str="\*********  NOTE: you are using GRCm38 mouse genome\********"
echo $mess_str

echo 'The file is: ', $bed_fname
echo 'Genome file is ',$genome_fname
echo 'The fasta file output is: ', $output_fname

fastaFromBed -fi $genome_fname -bed $bed_fname -fo $output_fname