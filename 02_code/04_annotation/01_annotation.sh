#!/bin/bash -l

#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 2:15:00
#SBATCH -J GA_annot
#SBATCH --mail-type=ALL
#SBATCH --mail-user anth2886@student.uu.se

# Load modules
cd $SNIC_TMP
module load bioinfo-tools prokka

# Commands
export SRCDIR=$HOME/2023_GA/GA_Project/
DATA="00_data/"

cd $SNIC_TMP


