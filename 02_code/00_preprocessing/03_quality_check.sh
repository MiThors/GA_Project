#!/bin/bash -l

#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 45:00
#SBATCH -J GA_qual
#SBATCH --mail-type=ALL
#SBATCH --mail-user anth2886@student.uu.se

# Load modules
module load bioinfo-tools FastQC/0.11.9/

# Commands
export SRCDIR=$HOME/2023_GA/GA_Project/

fastqc -t 2 $SRCDIR/01_analyses/00_preprocessing/02_trimming/RNA* -o $SRCDIR/01_analyses/00_preprocessing/03_quality_check/tmp
