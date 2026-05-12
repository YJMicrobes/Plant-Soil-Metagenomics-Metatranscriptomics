##############################################################################
## 6. contigs assembly - flye: merge all
##############################################################################

cd scratch/corn20260512/
mkdir -p 6_flye_output

#Pre-work: 1
# Check the total size of the clean reads
du -sh 4_nanofilt
#229G

#Since the size is manageble in my system, I decidede to assemle them together
#So merge all the reads
cat 4_nanofilt/filt*.fastq > 4_nanofilt/all_merged.fastq

#Pre-work: 2
#Check if you have high memory space to run
#I do

#Pre-work: 3
#Check module flye version
module avail flye


#!/bin/bash
#SBATCH --job-name=flye
#SBATCH -N 1
#SBATCH -c 48
#SBATCH --partition=himem
#SBATCH --qos=himem
#SBATCH --mem=500G
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

module load flye/2.9.5



flye \
  --nano-raw 4_nanofilt/all_merged.fastq \
  --meta \
  --out-dir 6_flye_output \
  -t 48

#output:
#Total length:   8753476023
#Fragments:      331455
#Fragments N50:  39008
#Largest frg:    4352488
#Scaffolds:      0
#Mean coverage:  8




