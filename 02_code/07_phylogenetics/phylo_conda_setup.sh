#!/bin/bash -l

#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 45:00
#SBATCH -J GA_phylo
#SBATCH --mail-type=ALL
#SBATCH --mail-user anth2886@student.uu.se

mkdir ~/genome_analysis_test/envs
​
module load conda
export CONDA_ENVS_PATH=~/genome_analysis_test/envs
conda create -n "phylophlan" -c bioconda phylophlan=3.0
​
mkdir ~/genome_analysis_test/envs/configs
​
conda activate phylophlan
phylophlan_write_default_configs.sh ~/genome_analysis_test/envs/configs
conda deactivate

