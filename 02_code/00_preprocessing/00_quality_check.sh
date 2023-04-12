#!/bin/bash -l

#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 5:00
#SBATCH -J GA_qual
#SBATCH --mail-type=ALL
#SBATCH --mail-user anth2886@student.uu.se

# Load modules
module load bioinfo-tools FastQC/0.11.9/

# Commands
export SRCDIR=$HOME/2023_GA/GA_Project/
cd $SNIC_TMP

fastqc -t 1 $SRCDIR/00_data/00_raw_data/01_RNA_untrimmed/RNA_D1_1*

cp * $SRCDIR/01_analyses/00_preprocessing/00_quality_check/tmp/

