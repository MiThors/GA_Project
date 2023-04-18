#!/bin/bash -l

#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 24:00:00
#SBATCH -J GA_assmbl
#SBATCH --mail-type=ALL
#SBATCH --mail-user anth2886@student.uu.se

# Load modules
module load bioinfo-tools megahit/1.2.9

# Commands
export SRCDIR=$HOME/2023_GA/GA_Project/
DATA="00_data/00_raw_data/00_DNA_trimmed"

cd $SNIC_TMP

megahit --kmin-1pass -1 $SRCDIR/$DATA/DNA_trimmed_D1_1.fastq.gz,$SRCDIR/$DATA/DNA_trimmed_D3_1.fastq.gz -2 $SRCDIR/$DATA/DNA_trimmed_D1_2.fastq.gz,$SRCDIR/$DATA/DNA_trimmed_D3_2.fastq.gz -o $SRCDIR/01_analyses/01_metagenome_assembly/tmp_07 -t 2
