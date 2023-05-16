#!/bin/bash -l

#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 10:00:00
#SBATCH -J GA_phylo
#SBATCH --mail-type=ALL
#SBATCH --mail-user anth2886@student.uu.se

# Load modules
cd $SNIC_TMP

# Commands
export SRCDIR=$HOME

source $SRCDIR/.bashrc
​
# Loading modules
module load conda
export CONDA_ENVS_PATH=$SRCDIR/genome_analysis_test/envs
​
source activate phylophlan
​
# Create variables
outdir=$SRCDIR/2023_GA/GA_Project/01_analyses/07_phylogenetics/tmp
configs=$SRCDIR/genome_analysis_test/envs/configs
annotation=$SRCDIR/2023_GA/GA_Project/01_analyses/04_annotation
​
# Create directories
mkdir -p $outdir/input/metagenome
​
# Symlinks input data files
#for bin in $annotation/tmp*;
#do 
#  ln -sf ${bin}/*.faa $outdir/input/metagenome/
#done
​
cd $outdir
​
phylophlan -i input/metagenome -d phylophlan --diversity high -f $configs/supermatrix_aa.cfg
