##############################################################################
## 5. NanoFilt
##############################################################################

cd scratch/corn20260512/
mkdir 5_nanofilt

#Pre-work 1:
#Check if your system has NanoPlot
module avail NanoPlot

#If not, you can build conda env and install the tool
#If you want, you can install NanoPlot and NanoFilt within the same env since we usually run them together


source ~/.bashrc
conda env list
conda activate nanoplot_env

NanoFilt -q 10 -l 1000 4_rawreads/s1_Dry1_1_b1.fastq  > 5_nanofilt/filt_s1_Dry1_1_b1.fastq &
NanoFilt -q 10 -l 1000 4_rawreads/s2_Dry1_2_b9.fastq  > 5_nanofilt/filt_s2_Dry1_2_b9.fastq &
NanoFilt -q 10 -l 1000 4_rawreads/s3_Wet1_1_b17.fastq > 5_nanofilt/filt_s3_Wet1_1_b17.fastq &
wait

# You can run seperately or write a loop

