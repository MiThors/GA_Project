#!/bin/bash -l

#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 1:45:00
#SBATCH -J GA_qual_ass
#SBATCH --mail-type=ALL
#SBATCH --mail-user anth2886@student.uu.se

# Load modules
cd $SNIC_TMP
module load bioinfo-tools quast/5.0.2

# Commands
export SRCDIR=$HOME/2023_GA/GA_Project/
DATA="00_data/03_assembled_DNA/DNA_assembled.fa.gz"
QUAST_HOME=/sw/bioinfo/quast/5.0.2/snowy/bin

cd $SNIC_TMP

python $QUAST_HOME/metaquast.py $SRCDIR/$DATA -o $SRCDIR/01_analyses/03_quality_checks/00_assembly_quality/tmp/ -t 2 --max-ref-number 0


