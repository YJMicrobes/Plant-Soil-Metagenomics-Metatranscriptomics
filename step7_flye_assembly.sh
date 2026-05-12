##############################################################################
## 7. contigs assembly - flye: merge all
##############################################################################


#Flye assembly
du -sh 8_nanofilt
#229G

cat 8_nanofilt/filt*.fastq > 8_nanofilt/all_merged.fastq

cd 8_nanofilt
gzip *.fastq


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

mkdir -p flye_all

flye \
  --nano-raw 8_nanofilt/all_merged.fastq \
  --meta \
  --out-dir flye_all \
  -t 48



#Total length:   8753476023
#Fragments:      331455
#Fragments N50:  39008
#Largest frg:    4352488
#Scaffolds:      0
#Mean coverage:  8




