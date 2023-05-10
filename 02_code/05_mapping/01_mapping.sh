#!/bin/bash -l

#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 10:00:00
#SBATCH -J GA_map
#SBATCH --mail-type=ALL
#SBATCH --mail-user anth2886@student.uu.se

# Load modules
cd $SNIC_TMP
module load bioinfo-tools
module load bwa/0.7.17
module load samtools/1.14

# Commands
export SRCDIR=$HOME/2023_GA/GA_Project
DNA="/00_data/04_binning"
RNA="/00_data/02_trimmed_RNA"

cd $SNIC_TMP
cp $SRCDIR$DNA/bin* .
# gunzip bin*

n=0
for i in bin*;
do

n=$((n+1))
bwa index $i

# D1
bwa mem -t 2 $i \
$SRCDIR$RNA/RNA_trimmed_D1_1.fastq.gz \
$SRCDIR$RNA/RNA_trimmed_D1_2.fastq.gz \
| samtools view -b - | samtools sort -o map_D1_bin$i.bam -
samtools index map_D1_bin$i.bam
samtools idxstats map_D1_bin$i.bam > map_D1_bin$i.stats
 
# D2
bwa mem -t 2 $i \
$SRCDIR$RNA/RNA_trimmed_D3_1.fastq.gz \
$SRCDIR$RNA/RNA_trimmed_D3_2.fastq.gz \
| samtools view -b - | samtools sort -o map_D3_bin$i.bam -
samtools index map_D3_bin$i.bam
samtools idxstats map_D3_bin$i.bam > map_D3_bin$i.stats

done

cp map* $SRC/01_analyses/05_mapping/tmp
