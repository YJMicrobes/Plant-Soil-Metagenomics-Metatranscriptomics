##############################################################################
## 4. nanoplot quality check
##############################################################################


cd scratch/corn20260512/
mkdir 3_nanoplot

#Pre-work 1:
#check the barcodes that used in the experiment (metadata)
#Match the barcodes.fastq files with the experiment metadata
#Rename the .fastq files and save them as the raw .fastq reads
#Delete the unknown barcodes.fastq files


#Pre-work 2:
#Check if your system has NanoPlot
module avail NanoPlot
#If not, you can build conda env and install the tool


source ~/.bashrc
conda env list
conda activate nanoplot_env

#831M
NanoPlot \
  --fastq 7_corn1_rawreads/s17_Dry3_1_b5.fastq \
  -o 6_nanoplot/ \
  --prefix s17_Dry3_1_b5
#reads: 79,909.0


#17M
NanoPlot \
  --fastq 7_corn1_rawreads/s13_P2_1_b35.fastq \
  -o 6_nanoplot/ \
  --prefix s13_P2_1_b35

scp bsteven@mantis-submit.cam.uchc.edu:/scratch/bsteven_ravi/6_nanoplot/s13_P2_1_b35NanoPlot-report.html ~/Desktop 
#reads: 1,828.0



#724M
NanoPlot \
  --fastq 7_corn1_rawreads/s30_P3_5_b47.fastq \
  -o 6_nanoplot/ \
  --prefix s30_P3_5_b47  

scp bsteven@mantis-submit.cam.uchc.edu:/scratch/bsteven_ravi/6_nanoplot/s30_P3_5_b47NanoPlot-report.html ~/Desktop 
#reads: 64,524.0



#8.2G
NanoPlot \
  --fastq 7_corn1_rawreads/s25_N1_3_b7.fastq \
  -o 6_nanoplot/ \
  --prefix s25_N1_3_b7  

scp bsteven@mantis-submit.cam.uchc.edu:/scratch/bsteven_ravi/6_nanoplot/s25_N1_3_b7NanoPlot-report.html ~/Desktop 
#reads: 779,025.0



#5.3G
NanoPlot \
  --fastq 7_corn1_rawreads/s4_Wet1_2_b25.fastq \
  -o 6_nanoplot/ \
  --prefix s4_Wet1_2_b25  

scp bsteven@mantis-submit.cam.uchc.edu:/scratch/bsteven_ravi/6_nanoplot/s4_Wet1_2_b25NanoPlot-report.html ~/Desktop 
#reads: 494,073.0



#1.4G
NanoPlot \
  --fastq 7_corn1_rawreads/unknown_b16.fastq \
  -o 6_nanoplot/ \
  --prefix unknown_b16  

scp bsteven@mantis-submit.cam.uchc.edu:/scratch/bsteven_ravi/6_nanoplot/unknown_b16NanoPlot-report.html ~/Desktop 
#reads: 133,821.0



#385M
NanoPlot \
  --fastq 7_corn1_rawreads/unknown_b32.fastq \
  -o 6_nanoplot/ \
  --prefix unknown_b32  

scp bsteven@mantis-submit.cam.uchc.edu:/scratch/bsteven_ravi/6_nanoplot/unknown_b32NanoPlot-report.html ~/Desktop 
#reads: 35,800.0


# You can run one by one or merge them as one to run or write a loop
# In the end, you can run scp to download the report to check the data


