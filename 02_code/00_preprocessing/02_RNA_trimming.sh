#!/bin/bash -l

#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:50:00
#SBATCH -J GA_trim
#SBATCH --mail-type=ALL
#SBATCH --mail-user anth2886@student.uu.se

# Load modules
module load bioinfo-tools trimmomatic/0.39

# Commands
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
export SRCDIR=$HOME/2023_GA/GA_Project
DATA="00_data/00_raw_data/01_RNA_untrimmed"
OUT="01_analyses/00_preprocessing/02_trimming/tmp"

cd $SNIC_TMP

<<<<<<< HEAD
java -jar /sw/bioinfo/trimmomatic/0.39/rackham/trimmomatic.jar PE -threads 2 -phred33 -trimlog $SRCDIR/$OUT/log.txt $SRCDIR/$DATA/RNA_D3_1.fastq.gz $SRCDIR/$DATA/RNA_D3_2.fastq.gz $SRCDIR/$OUT/RNA_D3_PF.fq.gz $SRCDIR/$OUT/RNA_D3_UF.fq.gz $SRCDIR/$OUT/RNA_D3_PR.fq.gz $SRCDIR/$OUT/RNA_D3_UR.fq.gz ILLUMINACLIP:/sw/bioinfo/trimmomatic/0.39/rackham/adapters/TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36 
=======
=======
>>>>>>> 74a47a853441e9784d78d7610bab65944fb05c75
=======
>>>>>>> 74a47a853441e9784d78d7610bab65944fb05c75
export SRCDIR=$HOME/2023_GA/GA_Project/

cd $SNIC_TMP

java -jar /sw/bioinfo/trimmomatic/0.39/rackham/trimmomatic PE -threads 2 -phred33 
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> 74a47a853441e9784d78d7610bab65944fb05c75
=======
java -jar /sw/bioinfo/trimmomatic/0.39/rackham/trimmomatic.jar PE -threads 2 -phred33 -trimlog $SRCDIR/$OUT/log.txt $SRCDIR/$DATA/RNA_D1_1.fastq.gz $SRCDIR/$DATA/RNA_D1_2.fastq.gz $SRCDIR/$OUT/RNA_D1_PF.fq.gz $SRCDIR/$OUT/RNA_D1_UF.fq.gz $SRCDIR/$OUT/RNA_D1_PR.fq.gz $SRCDIR/$OUT/RNA_D1_UR.fq.gz ILLUMINACLIP:/sw/bioinfo/trimmomatic/0.39/rackham/adapters/TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36 
>>>>>>> parent of a3f3a73... Set up so I can run the trimming on the second half of the data.
=======
>>>>>>> 74a47a853441e9784d78d7610bab65944fb05c75
=======
>>>>>>> 74a47a853441e9784d78d7610bab65944fb05c75
