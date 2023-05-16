#!/bin/bash -l

#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 10:00:00
#SBATCH -J GA_p_class
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
outdir=$SRCDIR/2023_GA/GA_Project/01_analyses/07_phylogenetics/tmp_class
configs=$SRCDIR/genome_analysis_test/envs/configs
bins=$SRCDIR/2023_GA/GA_Project/01_analyses/02_binning
​
cd $outdir

phylophlan_metagenomic -i $outdir/input/metagenome -d SGB.Jul20


