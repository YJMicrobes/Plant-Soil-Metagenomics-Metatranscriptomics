##############################################################################
## 8. binning: maxbin
##############################################################################
mkdir 7_maxbin_out


#!/bin/bash
#SBATCH --job-name=maxbin
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 48
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mem=150G
#SBATCH -o %x_%j.out
#SBATCH -e %x_%j.err

source ~/.bashrc 
conda activate maxbin_env
run_MaxBin.pl -contig 9_flye_all/assembly.fasta -reads 8_nanofilt/all_merged.fastq -out 7_maxbin_out/ -thread 30

ls -lha 7_maxbin_out
#145 .fa



Last login: Sun May 10 18:36:55 on ttys000
jy@jys-MacBook-Pro ~ % ssh bsteven@mantis-submit.cam.uchc.edu
 '-.          ,-'
    '.      ,'
      \    /
      _|__|_
     (,\--/,)
     /\Y  Y/
   ."  `><'
 ."    /|
/  /  // .-"'y".
  /  // / -//-//   __  __             _   _
 /| || / ,// //   |  \/  | __ _ _ __ | |_(_)___
/ | |," ,// //    | |\/| |/ _` | '_ \| __| / __|
  | `  ,//-//     | |  | | (_| | | | | |_| \__ \
  "._."// //      |_|  |_|\__,_|_| |_|\__|_|___/
       ^  ^

For policies and documentation regarding the Mantis cluster visit:

https://cbc-uconn.github.io/hpc-docs/

Home Directory Status: Size=932G Used=48G Avail=884G Use%=6%

bsteven@mantis-sub-7:~$ cd /scratch/bsteven_ravi/
bsteven@mantis-sub-7:/scratch/bsteven_ravi$ ls -lh
total 302K
drwxrwxr-x 2 bsteven root 4.4K May 11 09:05 7_maxbin_out
drwxrwxr-x 2 bsteven root 2.5K May 10 18:39 8_nanofilt
drwxrwxr-x 2 bsteven root  193 May 10 18:40 9_flye_all
-rw-rw-r-- 1 bsteven root  625 Apr 20 09:08 basecalling.sh
-rw-rw-r-- 1 bsteven root  348 May 10 18:49 job.sh
-rw-rw-r-- 1 bsteven root  115 May 11 09:05 maxbin_2061021.err
-rw-rw-r-- 1 bsteven root  26K May 11 09:05 maxbin_2061021.out
-rw-rw-r-- 1 bsteven root  306 May  4 07:54 work.sh
bsteven@mantis-sub-7:/scratch/bsteven_ravi$ squeue -u bsteven
             JOBID PARTITION     NAME     USER ST       TIME  NODES NODELIST(REASON)
bsteven@mantis-sub-7:/scratch/bsteven_ravi$ ls -lh
total 302K
drwxrwxr-x 2 bsteven root 4.4K May 11 09:05 7_maxbin_out
drwxrwxr-x 2 bsteven root 2.5K May 10 18:39 8_nanofilt
drwxrwxr-x 2 bsteven root  193 May 10 18:40 9_flye_all
-rw-rw-r-- 1 bsteven root  625 Apr 20 09:08 basecalling.sh
-rw-rw-r-- 1 bsteven root  348 May 10 18:49 job.sh
-rw-rw-r-- 1 bsteven root  115 May 11 09:05 maxbin_2061021.err
-rw-rw-r-- 1 bsteven root  26K May 11 09:05 maxbin_2061021.out
-rw-rw-r-- 1 bsteven root  306 May  4 07:54 work.sh
bsteven@mantis-sub-7:/scratch/bsteven_ravi$ ls -lha 7_maxbin_out/
total 29G
drwxrwxr-x 2 bsteven root 4.4K May 11 09:05 .
drwxrwxr-x 5 bsteven root  239 May 10 18:51 ..
-rw-rw-r-- 1 bsteven root 1.7M May 11 09:01 .001.fasta
-rw-rw-r-- 1 bsteven root 4.1M May 11 09:01 .002.fasta
-rw-rw-r-- 1 bsteven root 4.7M May 11 09:01 .003.fasta
-rw-rw-r-- 1 bsteven root 8.2M May 11 09:01 .004.fasta
-rw-rw-r-- 1 bsteven root 2.0M May 11 09:01 .005.fasta
-rw-rw-r-- 1 bsteven root 3.3M May 11 09:01 .006.fasta
-rw-rw-r-- 1 bsteven root  11M May 11 09:01 .007.fasta
-rw-rw-r-- 1 bsteven root 3.0M May 11 09:01 .008.fasta
-rw-rw-r-- 1 bsteven root 5.1M May 11 09:01 .009.fasta
-rw-rw-r-- 1 bsteven root 6.0M May 11 09:01 .010.fasta
-rw-rw-r-- 1 bsteven root 2.7M May 11 09:01 .011.fasta
-rw-rw-r-- 1 bsteven root 5.8M May 11 09:01 .012.fasta
-rw-rw-r-- 1 bsteven root 8.6M May 11 09:01 .013.fasta
-rw-rw-r-- 1 bsteven root  13M May 11 09:01 .014.fasta
-rw-rw-r-- 1 bsteven root 6.4M May 11 09:01 .015.fasta
-rw-rw-r-- 1 bsteven root 1.4M May 11 09:01 .016.fasta
-rw-rw-r-- 1 bsteven root 4.0M May 11 09:01 .017.fasta
-rw-rw-r-- 1 bsteven root 3.9M May 11 09:01 .018.fasta
-rw-rw-r-- 1 bsteven root 7.9M May 11 09:01 .019.fasta
-rw-rw-r-- 1 bsteven root 8.1M May 11 09:01 .020.fasta
-rw-rw-r-- 1 bsteven root  13M May 11 09:01 .021.fasta
-rw-rw-r-- 1 bsteven root 5.9M May 11 09:01 .022.fasta
-rw-rw-r-- 1 bsteven root 2.5M May 11 09:01 .023.fasta
-rw-rw-r-- 1 bsteven root  11M May 11 09:01 .024.fasta
-rw-rw-r-- 1 bsteven root 9.8M May 11 09:01 .025.fasta
-rw-rw-r-- 1 bsteven root 3.7M May 11 09:01 .026.fasta
-rw-rw-r-- 1 bsteven root 948K May 11 09:01 .027.fasta
-rw-rw-r-- 1 bsteven root 149K May 11 09:01 .028.fasta
-rw-rw-r-- 1 bsteven root 4.6M May 11 09:01 .029.fasta
-rw-rw-r-- 1 bsteven root 7.3M May 11 09:01 .030.fasta
-rw-rw-r-- 1 bsteven root 4.8M May 11 09:01 .031.fasta
-rw-rw-r-- 1 bsteven root 7.6M May 11 09:01 .032.fasta
-rw-rw-r-- 1 bsteven root  10M May 11 09:01 .033.fasta
-rw-rw-r-- 1 bsteven root 4.6M May 11 09:01 .034.fasta
-rw-rw-r-- 1 bsteven root 6.4M May 11 09:01 .035.fasta
-rw-rw-r-- 1 bsteven root 6.5M May 11 09:01 .036.fasta
-rw-rw-r-- 1 bsteven root 6.0M May 11 09:01 .037.fasta
-rw-rw-r-- 1 bsteven root  12M May 11 09:01 .038.fasta
-rw-rw-r-- 1 bsteven root 8.7M May 11 09:01 .039.fasta
-rw-rw-r-- 1 bsteven root 6.3M May 11 09:01 .040.fasta
-rw-rw-r-- 1 bsteven root 3.7M May 11 09:01 .041.fasta
-rw-rw-r-- 1 bsteven root 7.3M May 11 09:01 .042.fasta
-rw-rw-r-- 1 bsteven root 4.6M May 11 09:01 .043.fasta
-rw-rw-r-- 1 bsteven root  15M May 11 09:01 .044.fasta
-rw-rw-r-- 1 bsteven root 8.7M May 11 09:01 .045.fasta
-rw-rw-r-- 1 bsteven root 6.7M May 11 09:01 .046.fasta
-rw-rw-r-- 1 bsteven root 1.3M May 11 09:01 .047.fasta
-rw-rw-r-- 1 bsteven root 8.1M May 11 09:01 .048.fasta
-rw-rw-r-- 1 bsteven root 1.7M May 11 09:01 .049.fasta
-rw-rw-r-- 1 bsteven root 2.3M May 11 09:01 .050.fasta
-rw-rw-r-- 1 bsteven root 8.5M May 11 09:01 .051.fasta
-rw-rw-r-- 1 bsteven root 6.4M May 11 09:01 .052.fasta
-rw-rw-r-- 1 bsteven root 8.2M May 11 09:01 .053.fasta
-rw-rw-r-- 1 bsteven root 2.7M May 11 09:01 .054.fasta
-rw-rw-r-- 1 bsteven root 6.9M May 11 09:01 .055.fasta
-rw-rw-r-- 1 bsteven root 5.1M May 11 09:01 .056.fasta
-rw-rw-r-- 1 bsteven root 171K May 11 09:01 .057.fasta
-rw-rw-r-- 1 bsteven root 1.2M May 11 09:01 .058.fasta
-rw-rw-r-- 1 bsteven root 6.3M May 11 09:01 .059.fasta
-rw-rw-r-- 1 bsteven root 9.8M May 11 09:01 .060.fasta
-rw-rw-r-- 1 bsteven root  12M May 11 09:01 .061.fasta
-rw-rw-r-- 1 bsteven root 3.9M May 11 09:01 .062.fasta
-rw-rw-r-- 1 bsteven root 6.6M May 11 09:01 .063.fasta
-rw-rw-r-- 1 bsteven root 8.3M May 11 09:01 .064.fasta
-rw-rw-r-- 1 bsteven root 104K May 11 09:01 .065.fasta
-rw-rw-r-- 1 bsteven root 272K May 11 09:01 .066.fasta
-rw-rw-r-- 1 bsteven root 3.9M May 11 09:01 .067.fasta
-rw-rw-r-- 1 bsteven root 3.3M May 11 09:01 .068.fasta
-rw-rw-r-- 1 bsteven root  12M May 11 09:01 .069.fasta
-rw-rw-r-- 1 bsteven root 6.2M May 11 09:01 .070.fasta
-rw-rw-r-- 1 bsteven root  12M May 11 09:01 .071.fasta
-rw-rw-r-- 1 bsteven root 4.1M May 11 09:01 .072.fasta
-rw-rw-r-- 1 bsteven root 3.9M May 11 09:01 .073.fasta
-rw-rw-r-- 1 bsteven root 384K May 11 09:01 .074.fasta
-rw-rw-r-- 1 bsteven root 5.3M May 11 09:01 .075.fasta
-rw-rw-r-- 1 bsteven root 7.5M May 11 09:01 .076.fasta
-rw-rw-r-- 1 bsteven root 7.6M May 11 09:01 .077.fasta
-rw-rw-r-- 1 bsteven root 2.1M May 11 09:01 .078.fasta
-rw-rw-r-- 1 bsteven root 2.5M May 11 09:01 .079.fasta
-rw-rw-r-- 1 bsteven root 6.9M May 11 09:01 .080.fasta
-rw-rw-r-- 1 bsteven root 1.8M May 11 09:01 .081.fasta
-rw-rw-r-- 1 bsteven root 7.9M May 11 09:01 .082.fasta
-rw-rw-r-- 1 bsteven root 1.1M May 11 09:01 .083.fasta
-rw-rw-r-- 1 bsteven root 2.9M May 11 09:01 .084.fasta
-rw-rw-r-- 1 bsteven root  10M May 11 09:01 .085.fasta
-rw-rw-r-- 1 bsteven root 5.6M May 11 09:01 .086.fasta
-rw-rw-r-- 1 bsteven root 1.2M May 11 09:01 .087.fasta
-rw-rw-r-- 1 bsteven root 3.7M May 11 09:01 .088.fasta
-rw-rw-r-- 1 bsteven root 1.6M May 11 09:01 .089.fasta
-rw-rw-r-- 1 bsteven root 3.6M May 11 09:01 .090.fasta
-rw-rw-r-- 1 bsteven root 8.3M May 11 09:01 .091.fasta
-rw-rw-r-- 1 bsteven root 6.1M May 11 09:01 .092.fasta
-rw-rw-r-- 1 bsteven root 265K May 11 09:01 .093.fasta
-rw-rw-r-- 1 bsteven root 4.6M May 11 09:01 .094.fasta
-rw-rw-r-- 1 bsteven root 3.2M May 11 09:01 .095.fasta
-rw-rw-r-- 1 bsteven root 1.8M May 11 09:01 .096.fasta
-rw-rw-r-- 1 bsteven root 2.1M May 11 09:01 .097.fasta
-rw-rw-r-- 1 bsteven root  17M May 11 09:01 .098.fasta
-rw-rw-r-- 1 bsteven root 163K May 11 09:01 .099.fasta
-rw-rw-r-- 1 bsteven root 5.6M May 11 09:01 .100.fasta
-rw-rw-r-- 1 bsteven root 9.9M May 11 09:01 .101.fasta
-rw-rw-r-- 1 bsteven root 9.8M May 11 09:01 .102.fasta
-rw-rw-r-- 1 bsteven root 8.6M May 11 09:01 .103.fasta
-rw-rw-r-- 1 bsteven root 3.7M May 11 09:01 .104.fasta
-rw-rw-r-- 1 bsteven root 371K May 11 09:01 .105.fasta
-rw-rw-r-- 1 bsteven root 1.4M May 11 09:01 .106.fasta
-rw-rw-r-- 1 bsteven root 6.9M May 11 09:01 .107.fasta
-rw-rw-r-- 1 bsteven root 4.9M May 11 09:01 .108.fasta
-rw-rw-r-- 1 bsteven root 435K May 11 09:01 .109.fasta
-rw-rw-r-- 1 bsteven root 701K May 11 09:01 .110.fasta
-rw-rw-r-- 1 bsteven root 4.2M May 11 09:01 .111.fasta
-rw-rw-r-- 1 bsteven root 5.5M May 11 09:01 .112.fasta
-rw-rw-r-- 1 bsteven root  13M May 11 09:01 .113.fasta
-rw-rw-r-- 1 bsteven root 2.5M May 11 09:01 .114.fasta
-rw-rw-r-- 1 bsteven root  10M May 11 09:01 .115.fasta
-rw-rw-r-- 1 bsteven root 5.6M May 11 09:01 .116.fasta
-rw-rw-r-- 1 bsteven root  11M May 11 09:01 .117.fasta
-rw-rw-r-- 1 bsteven root 2.1M May 11 09:01 .118.fasta
-rw-rw-r-- 1 bsteven root 2.3M May 11 09:01 .119.fasta
-rw-rw-r-- 1 bsteven root 6.1M May 11 09:01 .120.fasta
-rw-rw-r-- 1 bsteven root 7.5M May 11 09:01 .121.fasta
-rw-rw-r-- 1 bsteven root 151K May 11 09:01 .122.fasta
-rw-rw-r-- 1 bsteven root 6.1M May 11 09:01 .123.fasta
-rw-rw-r-- 1 bsteven root 7.2M May 11 09:01 .124.fasta
-rw-rw-r-- 1 bsteven root 1.8M May 11 09:01 .125.fasta
-rw-rw-r-- 1 bsteven root 7.6M May 11 09:01 .126.fasta
-rw-rw-r-- 1 bsteven root 3.6M May 11 09:01 .127.fasta
-rw-rw-r-- 1 bsteven root 2.9M May 11 09:01 .128.fasta
-rw-rw-r-- 1 bsteven root 5.1M May 11 09:01 .129.fasta
-rw-rw-r-- 1 bsteven root 632K May 11 09:01 .130.fasta
-rw-rw-r-- 1 bsteven root 6.7M May 11 09:01 .131.fasta
-rw-rw-r-- 1 bsteven root 2.3M May 11 09:01 .132.fasta
-rw-rw-r-- 1 bsteven root 5.8M May 11 09:01 .133.fasta
-rw-rw-r-- 1 bsteven root 8.5M May 11 09:01 .134.fasta
-rw-rw-r-- 1 bsteven root  17M May 11 09:01 .135.fasta
-rw-rw-r-- 1 bsteven root 4.8M May 11 09:01 .136.fasta
-rw-rw-r-- 1 bsteven root 1.7M May 11 09:01 .137.fasta
-rw-rw-r-- 1 bsteven root 2.8M May 11 09:01 .138.fasta
-rw-rw-r-- 1 bsteven root 2.8M May 11 09:01 .139.fasta
-rw-rw-r-- 1 bsteven root 6.3M May 11 09:01 .140.fasta
-rw-rw-r-- 1 bsteven root 6.4M May 11 09:01 .141.fasta
-rw-rw-r-- 1 bsteven root 2.8M May 11 09:01 .142.fasta
-rw-rw-r-- 1 bsteven root 3.4M May 11 09:01 .143.fasta
-rw-rw-r-- 1 bsteven root 2.3M May 11 09:02 .144.fasta
-rw-rw-r-- 1 bsteven root 6.4M May 11 09:02 .145.fasta
-rw-rw-r-- 1 bsteven root 5.0M May 10 21:46 .abund1
-rw-rw-r-- 1 bsteven root 2.8G May 10 20:11 .idx.1.bt2l
-rw-rw-r-- 1 bsteven root 4.1G May 10 20:11 .idx.2.bt2l
-rw-rw-r-- 1 bsteven root 5.4M May 10 18:51 .idx.3.bt2l
-rw-rw-r-- 1 bsteven root 2.1G May 10 18:51 .idx.4.bt2l
-rw-rw-r-- 1 bsteven root 2.8G May 10 21:31 .idx.rev.1.bt2l
-rw-rw-r-- 1 bsteven root 4.1G May 10 21:31 .idx.rev.2.bt2l
-rw-rw-r-- 1 bsteven root  23K May 11 09:05 .log
-rw-rw-r-- 1 bsteven root  23K May 11 09:04 .marker
-rw-rw-r-- 1 bsteven root 541K May 11 09:05 .marker_of_each_bin.tar.gz
-rw-rw-r-- 1 bsteven root 7.6G May 11 09:04 .noclass
-rw-rw-r-- 1 bsteven root 5.0K May 11 09:04 .summary
-rw-rw-r-- 1 bsteven root 559K May 10 18:51 .tooshort
bsteven@mantis-sub-7:/scratch/bsteven_ravi$ less 7_maxbin_out/.summary 
bsteven@mantis-sub-7:/scratch/bsteven_ravi$ ls -lh 9_flye_all
total 21G
-rw-rw-r-- 1 bsteven root 8.3G May  8 21:28 assembly.fasta
-rw-rw-r-- 1 bsteven root 8.2G May  8 21:27 assembly_graph.gfa
-rw-rw-r-- 1 bsteven root 108M May  8 21:26 assembly_graph.gv
-rw-rw-r-- 1 bsteven root  13M May  8 21:28 assembly_info.txt
-rw-rw-r-- 1 bsteven root 694M May  8 21:28 flye.log
-rw-rw-r-- 1 bsteven root   92 May  8 21:26 params.json
bsteven@mantis-sub-7:/scratch/bsteven_ravi$ ls -lh
total 302K
drwxrwxr-x 2 bsteven root 4.4K May 11 09:05 7_maxbin_out
drwxrwxr-x 2 bsteven root 2.5K May 10 18:39 8_nanofilt
drwxrwxr-x 2 bsteven root  193 May 10 18:40 9_flye_all
-rw-rw-r-- 1 bsteven root  625 Apr 20 09:08 basecalling.sh
-rw-rw-r-- 1 bsteven root  348 May 10 18:49 job.sh
-rw-rw-r-- 1 bsteven root  115 May 11 09:05 maxbin_2061021.err
-rw-rw-r-- 1 bsteven root  26K May 11 09:05 maxbin_2061021.out
-rw-rw-r-- 1 bsteven root  306 May  4 07:54 work.sh
bsteven@mantis-sub-7:/scratch/bsteven_ravi$ vim job.sh 
bsteven@mantis-sub-7:/scratch/bsteven_ravi$ sbatch job.sh
Submitted batch job 2063759
bsteven@mantis-sub-7:/scratch/bsteven_ravi$ squeue -u bsteven
             JOBID PARTITION     NAME     USER ST       TIME  NODES NODELIST(REASON)
           2063759   general    metac  bsteven  R       0:04      1 mantis-001
bsteven@mantis-sub-7:/scratch/bsteven_ravi$ less 7_maxbin_out/.summary 

less 7_maxbin_out/.summary 
# Binname Abundance Completeness Genomesize GCcontent
# .001.fasta      0.00    17.8%   1683255 42.4
# .002.fasta      0.00    49.5%   4217985 44.1
# .003.fasta      0.00    28.0%   4827821 71.7
# .004.fasta      0.00    17.8%   8372049 73.7
# .005.fasta      0.00    6.5%    1990160 45.4
# .006.fasta      0.00    37.4%   3330990 67.9
# .007.fasta      0.00    32.7%   10778449 60.1
# .008.fasta      0.00    21.5%   3089661 29.7
# .009.fasta      0.00    18.7%   5186385 70.6
# .010.fasta      0.00    2.8%    6128344 72.6
# .011.fasta      0.00    10.3%   2752210 48.6
# .012.fasta      0.00    1.9%    5922886 62.7
# .013.fasta      0.00    37.4%   8800200 63.2
# .014.fasta      0.00    48.6%   13264545 72.8
# .015.fasta      0.00    40.2%   6536417 62.9
# .016.fasta      0.00    0.0%    1357234 63.9
# .017.fasta      0.00    36.4%   4066591 66.1
# .018.fasta      0.00    9.3%    3975470 71.5
# .019.fasta      0.00    34.6%   8101116 67.4
# .020.fasta      0.00    15.9%   8299558 70.2
# .021.fasta      0.00    28.0%   12641627 67.9
# .022.fasta      0.00    40.2%   6065141 55.9
# .023.fasta      0.00    9.3%    2558641 70.9
# .024.fasta      0.00    6.5%    10697855 75.6
# .025.fasta      0.00    22.4%   10061600 73.6
# .026.fasta      0.00    6.5%    3763148 72.9
# .027.fasta      0.00    4.7%    956434  58.6
# .028.fasta      0.00    0.0%    149368  71.8
# .029.fasta      0.00    9.3%    4752221 57.8
# .030.fasta      0.00    12.1%   7478402 65.2
# .031.fasta      0.00    8.4%    4940505 71.8
# .032.fasta      0.00    21.5%   7788221 65.6
# .033.fasta      0.00    69.2%   10262463 52.4
# .034.fasta      0.00    10.3%   4696516 76.0
# .035.fasta      0.00    15.9%   6600325 71.7
# .036.fasta      0.00    57.0%   6642311 60.3
# .037.fasta      0.00    25.2%   6149535 70.0
# .038.fasta      0.00    34.6%   12336285 73.5
# .039.fasta      0.00    9.3%    8972733 73.3
# .040.fasta      0.00    26.2%   6428957 72.3
# .041.fasta      0.00    24.3%   3788701 63.7
# .042.fasta      0.00    27.1%   7526456 71.2
# .043.fasta      0.00    47.7%   4713218 65.8
# .044.fasta      0.00    45.8%   14969824 73.5
# .045.fasta      0.00    19.6%   8970801 73.2
# .046.fasta      0.00    25.2%   6870373 73.4
# .047.fasta      0.00    25.2%   1303871 68.5
# .048.fasta      0.00    16.8%   8282213 73.7
# .049.fasta      0.00    1.9%    1707488 62.5
# .050.fasta      0.00    15.0%   2328440 63.4
# .051.fasta      0.00    49.5%   8765167 65.9
# .052.fasta      0.00    1.9%    6555819 68.9
# .053.fasta      0.00    27.1%   8387540 66.4
# .054.fasta      0.00    14.0%   2745080 63.8
# .055.fasta      0.00    17.8%   7105849 69.2
# .056.fasta      0.00    27.1%   5237823 67.7
# .057.fasta      0.00    0.0%    171967  63.0
# .058.fasta      0.00    26.2%   1178844 46.1
# .059.fasta      0.00    17.8%   6426638 46.7
# .060.fasta      0.00    10.3%   10048954 69.6
# .061.fasta      0.00    41.1%   11783673 70.5
# .062.fasta      0.00    8.4%    3969630 71.8
# .063.fasta      0.00    43.0%   6800392 50.3
# .064.fasta      0.00    44.9%   8530662 72.2
# .065.fasta      0.00    0.0%    103845  68.2
# .066.fasta      0.00    0.9%    273378  69.9
# .067.fasta      0.00    8.4%    3931421 66.3
# .068.fasta      0.00    11.2%   3368330 55.4
# .069.fasta      0.00    15.9%   11847747 71.7
# .070.fasta      0.00    11.2%   6372174 70.6
# .071.fasta      0.00    5.6%    11502864 75.8
# .072.fasta      0.00    13.1%   4186212 62.9
# .073.fasta      0.00    77.6%   3967294 49.3
# .074.fasta      0.00    3.7%    387377  39.6
# .075.fasta      0.00    8.4%    5417768 49.7
# .076.fasta      0.00    29.0%   7678890 67.3
# .077.fasta      0.00    48.6%   7822580 70.8
# .078.fasta      0.00    6.5%    2147282 43.2
# .079.fasta      0.00    4.7%    2547799 65.8
# .080.fasta      0.00    59.8%   7072902 59.1
# .081.fasta      0.00    10.3%   1840983 59.8
# .082.fasta      0.00    55.1%   8062383 67.5
# .083.fasta      0.00    1.9%    1067130 65.3
# .084.fasta      0.00    19.6%   2962702 71.1
# .085.fasta      0.00    25.2%   10330162 3.9
# .086.fasta      0.00    39.3%   5760872 47.1
# .087.fasta      0.00    0.0%    1235326 70.8
# .088.fasta      0.00    39.3%   3738255 47.4
# .089.fasta      0.00    2.8%    1605019 69.2
# .090.fasta      0.00    14.0%   3619275 52.5
# .091.fasta      0.00    97.2%   8530866 66.1
# .092.fasta      0.00    54.2%   6281093 59.6
# .093.fasta      0.00    0.0%    266250  57.5
# .094.fasta      0.00    8.4%    4747785 70.6
# .095.fasta      0.00    16.8%   3216693 65.2
# .096.fasta      0.00    0.9%    1807824 40.6
# .097.fasta      0.00    0.9%    2160780 71.9
# .098.fasta      0.00    63.6%   17162288 63.5
# .099.fasta      0.00    0.0%    164113  68.1
# .100.fasta      0.00    8.4%    5686321 72.2
# .101.fasta      0.00    24.3%   10219759 73.1
# .102.fasta      0.00    17.8%   10111381 75.3
# .103.fasta      0.00    16.8%   8829491 74.0
# .104.fasta      0.00    10.3%   3744008 73.2
# .105.fasta      0.00    0.9%    373811  47.2
# .106.fasta      0.00    16.8%   1390227 49.9
# .107.fasta      0.00    14.0%   7056766 72.4
# .108.fasta      0.00    20.6%   5021543 68.2
# .109.fasta      0.00    3.7%    438387  60.1
# .110.fasta      0.00    6.5%    706128  41.3
# .111.fasta      0.00    11.2%   4322657 69.0
# .112.fasta      0.00    48.6%   5618400 63.6
# .113.fasta      0.00    54.2%   12982298  67.8
# .114.fasta      0.00    7.5%    2559695 49.8
# .115.fasta      0.00    20.6%   10305416  71.4
# .116.fasta      0.00    38.3%   5731370 50.0
# .117.fasta      0.00    5.6%    10611586 73.5
# .118.fasta      0.00    17.8%   2065565 69.4
# .119.fasta      0.00    0.9%    2356331 71.1
# .120.fasta      0.00    24.3%   6227669 62.7
# .121.fasta      0.00    29.0%   7700341 73.5
# .122.fasta      0.00    0.0%    152115  68.3
# .123.fasta      0.00    9.3%    6249653 70.9
# .124.fasta      0.00    8.4%    7398976 72.9
# .125.fasta      0.00    10.3%   1768102 37.3
# .126.fasta      0.00    41.1%   7789539 67.5
# .127.fasta      0.00    32.7%   3630529 55.1
# .128.fasta      0.00    32.7%   2930325 35.9
# .129.fasta      0.00    41.1%   5267441 51.6
# .130.fasta      0.00    8.4%    636784  65.5
# .131.fasta      0.00    23.4%   6817853 75.4
# .132.fasta      0.00    26.2%   2353318 53.8
# .133.fasta      0.00    9.3%    5960321 72.2
# .134.fasta      0.00    8.4%    8713918 73.7
# .135.fasta      0.00    54.2%   16680819 74.1
# .136.fasta      0.00    5.6%    4954888 71.1
# .137.fasta      0.00    4.7%    1696003 67.3
# .138.fasta      0.00    6.5%    2805454 71.5
# .139.fasta      0.00    10.3%   2865069 70.6
# .140.fasta      0.00    48.6%   6503060 66.8
# .141.fasta      0.00    41.1%   6551621 68.2
# .142.fasta      0.00    40.2%   2856651 70.0
# .143.fasta      0.00    20.6%   3451826 71.6
# .144.fasta      0.00    46.7%   2311631 71.2
# .145.fasta      0.00    60.7%   6555792 70.6