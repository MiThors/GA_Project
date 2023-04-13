#!/bin/bash -l

#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:50:00
#SBATCH -J GA_trim
#SBATCH --mail-type=ALL
#SBATCH --mail-user anth2886@student.uu.se

# Load modules
module load bioinfo-tools trimmomatic/0.39

# Commands
export SRCDIR=$HOME/2023_GA/GA_Project/

cd $SNIC_TMP

java -jar /sw/bioinfo/trimmomatic/0.39/rackham/trimmomatic PE -threads 2 -phred33 
