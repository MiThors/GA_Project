#!/bin/bash -l

#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 06:00:00
#SBATCH -J GA_annot
#SBATCH --mail-type=ALL
#SBATCH --mail-user anth2886@student.uu.se

# Load modules
cd $SNIC_TMP
module load bioinfo-tools prokka

# Commands
export SRCDIR=$HOME/2023_GA/GA_Project
DATA="/00_data/04_binning"

cd $SNIC_TMP
cp $SRCDIR$DATA/bin* .
gunzip bin*

n=0
for i in bin*;
do

n=$((n+1))
prokka --outdir $SRCDIR/01_analyses/04_annotation/tmp$n --prefix bin$n --force $i
rm $i

done
