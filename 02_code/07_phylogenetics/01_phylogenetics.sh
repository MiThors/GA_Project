#!/bin/bash -l

#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 3:45:00
#SBATCH -J GA_count
#SBATCH --mail-type=ALL
#SBATCH --mail-user anth2886@student.uu.se

# Load modules
cd $SNIC_TMP
module load bioinfo-tools
module load htseq/2.0.2

# Commands
export SRCDIR=$HOME/2023_GA/GA_Project
MAP="/00_data/06_mapped_RNA_to_DNA"
ANN="/00_data/05_annotated_DNA"
OUT="/01_analyses/06_read_counting/tmp"

cd $SNIC_TMP
cp $SRCDIR$MAP/mapped* .
cp $SRCDIR$ANN/DNA* .

for i in {1..51};
do

sed '/^##FASTA/Q' DNA_annotated_bin$i.gff > no_seq_DNA_annotated_bin$i.gff
htseq-count -r pos -i ID -t CDS --format bam mapped_D1_bin$i.bam no_seq_DNA_annotated_bin$i.gff > $SRCDIR$OUT/out_D1_bin$i.txt
htseq-count -r pos -i ID -t CDS --format bam mapped_D3_bin$i.bam no_seq_DNA_annotated_bin$i.gff > $SRCDIR$OUT/out_D3_bin$i.txt

echo "Bin $i DONE!"

done


