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
module load 

# Commands
export SRCDIR=$HOME/2023_GA/GA_Project
DATA="/00_data/04_binning"

cd $SNIC_TMP

