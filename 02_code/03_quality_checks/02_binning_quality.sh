#!/bin/bash -l

#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 2:00:00
#SBATCH -J GA_qual_bin
#SBATCH --mail-type=ALL
#SBATCH --mail-user anth2886@student.uu.se

# Load modules
module load bioinfo-tools CheckM/1.1.3

# Commands
export SRCDIR=$HOME/2023_GA/GA_Project/
DATA="00_data/04_binning/"

cd $SNIC_TMP
mkdir CheckM_data
cd CheckM_data
cp -av $CHECKM_DATA/checkm_data_2015_01_16.tar.gz .
mkdir 2015_01_16
cd 2015_01_16
tar xzf ../checkm_data_2015_01_16.tar.gz
checkm data setRoot $PWD

cd $SNIC_TMP 
mkdir tmp
cp $SRCDIR/$DATA/bin* tmp 
gunzip tmp/bin*

checkm lineage_wf -t 4 --reduced_tree -x fa tmp $SRCDIR/01_analyses/03_quality_checks/01_binning_quality/tmp 



