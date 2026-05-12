##############################################################################
## 3. demultiplexing_corn1
##############################################################################

cd scratch/corn20260512/
mkdir 2_demultiplex


#!/bin/bash
#SBATCH --job-name=basecalling
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 30
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mem=150G
#SBATCH --qos=general
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err


#No need GPU

module load Dorado/0.9.0
dorado demux --kit-name SQK-NBD114-96 --emit-fastq --output-dir 2_demultiplex/ 1_basecall/corn1.bam -t 30







