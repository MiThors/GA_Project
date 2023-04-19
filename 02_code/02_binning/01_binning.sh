#!/bin/bash -l

#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 45:00
#SBATCH -J GA_binng
#SBATCH --mail-type=ALL
#SBATCH --mail-user anth2886@student.uu.se

# Load modules
module load bioinfo-tools MetaBat/2.12.1

# Commands
export SRCDIR=$HOME/2023_GA/GA_Project/
DATA="00_data/03_assembled_DNA/DNA_assembled.fa.gz"

cd $SRCDIR/01_analyses/02_binning/tmp/

runMetaBat.sh $DATA


