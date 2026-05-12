##############################################################################
## 5. NanoFilt_corn1
##############################################################################

source ~/.bashrc
conda env list
conda activate nanoplot_env

ls 7_corn1_rawreads


mkdir 8_nanofilt

NanoFilt -q 10 -l 1000 7_corn1_rawreads/s1_Dry1_1_b1.fastq  > 8_nanofilt/filt_s1_Dry1_1_b1.fastq &
NanoFilt -q 10 -l 1000 7_corn1_rawreads/s2_Dry1_2_b9.fastq  > 8_nanofilt/filt_s2_Dry1_2_b9.fastq &
NanoFilt -q 10 -l 1000 7_corn1_rawreads/s3_Wet1_1_b17.fastq > 8_nanofilt/filt_s3_Wet1_1_b17.fastq &
NanoFilt -q 10 -l 1000 7_corn1_rawreads/s4_Wet1_2_b25.fastq > 8_nanofilt/filt_s4_Wet1_2_b25.fastq &

NanoFilt -q 10 -l 1000 7_corn1_rawreads/s5_P1_1_b33.fastq  > 8_nanofilt/filt_s5_P1_1_b33.fastq &
NanoFilt -q 10 -l 1000 7_corn1_rawreads/s6_P1_2_b41.fastq  > 8_nanofilt/filt_s6_P1_2_b41.fastq &
NanoFilt -q 10 -l 1000 7_corn1_rawreads/s7_N1_1_b49.fastq > 8_nanofilt/filt_s7_N1_1_b49.fastq &
NanoFilt -q 10 -l 1000 7_corn1_rawreads/s8_N1_2_b57.fastq > 8_nanofilt/filt_s8_N1_2_b57.fastq &

NanoFilt -q 10 -l 1000 7_corn1_rawreads/s9_Dry2_1_b3.fastq  > 8_nanofilt/filt_s9_Dry2_1_b3.fastq &
NanoFilt -q 10 -l 1000 7_corn1_rawreads/s10_Dry2_2_b11.fastq  > 8_nanofilt/filt_s10_Dry2_2_b11.fastq &
NanoFilt -q 10 -l 1000 7_corn1_rawreads/s11_Wet2_1_b19.fastq > 8_nanofilt/filt_s11_Wet2_1_b19.fastq &
NanoFilt -q 10 -l 1000 7_corn1_rawreads/s12_Wet2_2_b27.fastq > 8_nanofilt/filt_s12_Wet2_2_b27.fastq &

NanoFilt -q 10 -l 1000 7_corn1_rawreads/s13_P2_1_b35.fastq  > 8_nanofilt/filt_s13_P2_1_b35.fastq &
NanoFilt -q 10 -l 1000 7_corn1_rawreads/s14_P2_2_b43.fastq  > 8_nanofilt/filt_s14_P2_2_b43.fastq &
NanoFilt -q 10 -l 1000 7_corn1_rawreads/s15_N2_1_b51.fastq > 8_nanofilt/filt_s15_N2_1_b51.fastq &
NanoFilt -q 10 -l 1000 7_corn1_rawreads/s16_N2_2_b59.fastq > 8_nanofilt/filt_s16_N2_2_b59.fastq &

NanoFilt -q 10 -l 1000 7_corn1_rawreads/s17_Dry3_1_b5.fastq  > 8_nanofilt/filt_s17_Dry3_1_b5.fastq &
NanoFilt -q 10 -l 1000 7_corn1_rawreads/s18_Dry3_2_b13.fastq  > 8_nanofilt/filt_s18_Dry3_2_b13.fastq &
NanoFilt -q 10 -l 1000 7_corn1_rawreads/s19_We3_1_b21.fastq > 8_nanofilt/filt_s19_We3_1_b21.fastq &
NanoFilt -q 10 -l 1000 7_corn1_rawreads/s20_Wet3_2_b29.fastq > 8_nanofilt/filt_s20_Wet3_2_b29.fastq &

NanoFilt -q 10 -l 1000 7_corn1_rawreads/s21_P3_1_b37.fastq  > 8_nanofilt/filt_s21_P3_1_b37.fastq &
NanoFilt -q 10 -l 1000 7_corn1_rawreads/s22_P3_2_b45.fastq  > 8_nanofilt/filt_s22_P3_2_b45.fastq &
NanoFilt -q 10 -l 1000 7_corn1_rawreads/s23_N3_1_b53.fastq > 8_nanofilt/filt_s23_N3_1_b53.fastq &
NanoFilt -q 10 -l 1000 7_corn1_rawreads/s24_N3_2_b61.fastq > 8_nanofilt/filt_s24_N3_2_b61.fastq &

NanoFilt -q 10 -l 1000 7_corn1_rawreads/s25_N1_3_b7.fastq  > 8_nanofilt/filt_s25_N1_3_b7.fastq &
NanoFilt -q 10 -l 1000 7_corn1_rawreads/s26_P1_5_b15.fastq  > 8_nanofilt/filt_s26_P1_5_b15.fastq &
NanoFilt -q 10 -l 1000 7_corn1_rawreads/s27_N2_3_b23.fastq > 8_nanofilt/filt_s27_N2_3_b23.fastq &
NanoFilt -q 10 -l 1000 7_corn1_rawreads/s28_P2_5_b31.fastq > 8_nanofilt/filt_s28_P2_5_b31.fastq &

NanoFilt -q 10 -l 1000 7_corn1_rawreads/s29_N3_3_b39.fastq  > 8_nanofilt/filt_s29_N3_3_b39.fastq &
NanoFilt -q 10 -l 1000 7_corn1_rawreads/s30_P3_5_b47.fastq  > 8_nanofilt/filt_s30_P3_5_b47.fastq &

NanoFilt -q 10 -l 1000 7_corn1_rawreads/unknown_b16.fastq > 8_nanofilt/filt_unknown_b16.fastq &
NanoFilt -q 10 -l 1000 7_corn1_rawreads/unknown_b24.fastq > 8_nanofilt/filt_unknown_b24.fastq &
NanoFilt -q 10 -l 1000 7_corn1_rawreads/unknown_b32.fastq > 8_nanofilt/filt_unknown_b32.fastq &
NanoFilt -q 10 -l 1000 7_corn1_rawreads/unknown_b40.fastq > 8_nanofilt/filt_unknown_b40.fastq &
NanoFilt -q 10 -l 1000 7_corn1_rawreads/unknown_b48.fastq > 8_nanofilt/filt_unknown_b48.fastq &
wait







#output
raw   - filt
2.0G  - 1.8G filt_s10_Dry2_2_b11.fastq
2.9G  - 2.7G filt_s11_Wet2_1_b19.fastq
1.7G  - 1.6G filt_s12_Wet2_2_b27.fastq
17M   - 16M  filt_s13_P2_1_b35.fastq
3.5G  - 3.3G filt_s14_P2_2_b43.fastq
1.5G  - 1.4G filt_s15_N2_1_b51.fastq
1.0G  - 940M filt_s16_N2_2_b59.fastq
831M  - 50M filt_s17_Dry3_1_b5.fastq
2.3G  - 2.2G filt_s18_Dry3_2_b13.fastq
2.3G  - 2.1G filt_s19_We3_1_b21.fastq
5.7G  - 5.3G filt_s1_Dry1_1_b1.fastq
1.3G  - 1.2G filt_s20_Wet3_2_b29.fastq
3.6G  - 3.3G filt_s21_P3_1_b37.fastq
3.3G  - 3.0G filt_s22_P3_2_b45.fastq
3.4G  - 3.1G filt_s23_N3_1_b53.fastq
1.7G  - 1.5G filt_s24_N3_2_b61.fastq
8.2G  - 7.5G filt_s25_N1_3_b7.fastq
4.4G  - 4.0G filt_s26_P1_5_b15.fastq
1.9G  - 1.8G filt_s27_N2_3_b23.fastq
2.2G  - 2.0G filt_s28_P2_5_b31.fastq
1.8G  - 1.6G filt_s29_N3_3_b39.fastq
4.4G  - 4.0G filt_s2_Dry1_2_b9.fastq
724M  - 650M filt_s30_P3_5_b47.fastq
2.7G  - 2.5G filt_s3_Wet1_1_b17.fastq
5.3G  - 4.8G filt_s4_Wet1_2_b25.fastq
3.4G  - 3.2G filt_s5_P1_1_b33.fastq
9.0G  - 8.4G filt_s6_P1_2_b41.fastq
3.0G  - 2.7G filt_s7_N1_1_b49.fastq
4.1G  - 3.8G filt_s8_N1_2_b57.fastq
1,9G  - 1.8G filt_s9_Dry2_1_b3.fastq
1.4G  - 1.3G filt_unknown_b16.fastq
1.3G  - 1.2G filt_unknown_b24.fastq
385M  - 333M filt_unknown_b32.fastq
344M  - 302M filt_unknown_b40.fastq
2.3G  - 2.1G filt_unknown_b48.fastq






##############################################################################
## 5. NanoFilt_corn2
##############################################################################

source ~/.bashrc
conda env list
conda activate nanoplot_env



mkdir corn_2_nanofilt

NanoFilt -q 10 -l 1000 corn_2_demultiplex/s18_P2_4_b3.fastq    > corn_2_nanofilt/filt2_s18_P2_4_b3.fastq &
NanoFilt -q 10 -l 1000 corn_2_demultiplex/s1_Dry1_3_b9.fastq   > corn_2_nanofilt/filt2_s1_Dry1_3_b9.fastq &
NanoFilt -q 10 -l 1000 corn_2_demultiplex/s10_N1_5_b10.fastq   > corn_2_nanofilt/filt2_s10_N1_5_b10.fastq &
NanoFilt -q 10 -l 1000 corn_2_demultiplex/s19_N2_4_b11.fastq   > corn_2_nanofilt/filt2_s19_N2_4_b11.fastq &
NanoFilt -q 10 -l 1000 corn_2_demultiplex/s22_Dry3_4_b13.fastq > corn_2_nanofilt/filt2_s22_Dry3_4_b13.fastq &
NanoFilt -q 10 -l 1000 corn_2_demultiplex/s2_Dry1_4_b17.fastq  > corn_2_nanofilt/filt2_s2_Dry1_4_b17.fastq &
NanoFilt -q 10 -l 1000 corn_2_demultiplex/s11_Dry2_3_b18.fastq > corn_2_nanofilt/filt2_s11_Dry2_3_b18.fastq &
NanoFilt -q 10 -l 1000 corn_2_demultiplex/s20_N2_5_b19.fastq   > corn_2_nanofilt/filt2_s20_N2_5_b19.fastq &
NanoFilt -q 10 -l 1000 corn_2_demultiplex/s23_Dry3_5_b21.fastq > corn_2_nanofilt/filt2_s23_Dry3_5_b21.fastq &
NanoFilt -q 10 -l 1000 corn_2_demultiplex/s3_Dry1_5_b25.fastq  > corn_2_nanofilt/filt2_s3_Dry1_5_b25.fastq &
NanoFilt -q 10 -l 1000 corn_2_demultiplex/s12_Dry2_4_b26.fastq > corn_2_nanofilt/filt2_s12_Dry2_4_b26.fastq &
NanoFilt -q 10 -l 1000 corn_2_demultiplex/s21_Dry3_3_b27.fastq > corn_2_nanofilt/filt2_s21_Dry3_3_b27.fastq &
NanoFilt -q 10 -l 1000 corn_2_demultiplex/s24_Wet3_3_b29.fastq > corn_2_nanofilt/filt2_s24_Wet3_3_b29.fastq &
NanoFilt -q 10 -l 1000 corn_2_demultiplex/s4_Wet1_3_b33.fastq  > corn_2_nanofilt/filt2_s4_Wet1_3_b33.fastq &
NanoFilt -q 10 -l 1000 corn_2_demultiplex/s13_Dry2_5_b34.fastq > corn_2_nanofilt/filt2_s13_Dry2_5_b34.fastq &
NanoFilt -q 10 -l 1000 corn_2_demultiplex/s25_Wet3_4_b37.fastq > corn_2_nanofilt/filt2_s25_Wet3_4_b37.fastq &
NanoFilt -q 10 -l 1000 corn_2_demultiplex/s5_Wet1_4_b41.fastq  > corn_2_nanofilt/filt2_s5_Wet1_4_b41.fastq &
NanoFilt -q 10 -l 1000 corn_2_demultiplex/s14_Wet2_3_b42.fastq > corn_2_nanofilt/filt2_s14_Wet2_3_b42.fastq &
NanoFilt -q 10 -l 1000 corn_2_demultiplex/s26_Wet3_5_b45.fastq > corn_2_nanofilt/filt2_s26_Wet3_5_b45.fastq &
NanoFilt -q 10 -l 1000 corn_2_demultiplex/s6_Wet1_5_b49.fastq  > corn_2_nanofilt/filt2_s6_Wet1_5_b49.fastq &
NanoFilt -q 10 -l 1000 corn_2_demultiplex/s15_Wet2_4_b50.fastq > corn_2_nanofilt/filt2_s15_Wet2_4_b50.fastq &
NanoFilt -q 10 -l 1000 corn_2_demultiplex/s27_P3_3_b53.fastq   > corn_2_nanofilt/filt2_s27_P3_3_b53.fastq &
NanoFilt -q 10 -l 1000 corn_2_demultiplex/s7_P1_3_b57.fastq    > corn_2_nanofilt/filt2_s7_P1_3_b57.fastq &
NanoFilt -q 10 -l 1000 corn_2_demultiplex/s28_P3_4_b61.fastq   > corn_2_nanofilt/filt2_s28_P3_4_b61.fastq &
NanoFilt -q 10 -l 1000 corn_2_demultiplex/s8_P1_4_b65.fastq    > corn_2_nanofilt/filt2_s8_P1_4_b65.fastq &
NanoFilt -q 10 -l 1000 corn_2_demultiplex/s29_N3_4_b62.fastq   > corn_2_nanofilt/filt2_s29_N3_4_b62.fastq &
NanoFilt -q 10 -l 1000 corn_2_demultiplex/s9_N1_4_b73.fastq    > corn_2_nanofilt/filt2_s9_N1_4_b73.fastq &
NanoFilt -q 10 -l 1000 corn_2_demultiplex/s16_Wet2_5_b74.fastq > corn_2_nanofilt/filt2_s16_Wet2_5_b74.fastq &
NanoFilt -q 10 -l 1000 corn_2_demultiplex/s30_N3_5_b77.fastq   > corn_2_nanofilt/filt2_s30_N3_5_b77.fastq &
NanoFilt -q 10 -l 1000 corn_2_demultiplex/s17_P2_3_b82.fastq   > corn_2_nanofilt/filt2_s17_P2_3_b82.fastq &
NanoFilt -q 10 -l 1000 corn_2_demultiplex/unknown_b31.fastq   > corn_2_nanofilt/filt2_unknown_b31.fastq &
NanoFilt -q 10 -l 1000 corn_2_demultiplex/unknown_b55.fastq   > corn_2_nanofilt/filt2_unknown_b55.fastq &
NanoFilt -q 10 -l 1000 corn_2_demultiplex/unknown_b56.fastq   > corn_2_nanofilt/filt2_unknown_b56.fastq &
wait



4.3G filt2_s10_N1_5_b10.fastq
2.9G filt2_s11_Dry2_3_b18.fastq
2.9G filt2_s12_Dry2_4_b26.fastq
2.8G filt2_s13_Dry2_5_b34.fastq
3.8G filt2_s14_Wet2_3_b42.fastq
3.5G filt2_s15_Wet2_4_b50.fastq
3.7G filt2_s16_Wet2_5_b74.fastq
3.3G filt2_s17_P2_3_b82.fastq
2.9G filt2_s18_P2_4_b3.fastq
3.0G filt2_s19_N2_4_b11.fastq
2.9G filt2_s1_Dry1_3_b9.fastq
4.5G filt2_s20_N2_5_b19.fastq
5.4G filt2_s21_Dry3_3_b27.fastq
2.3G filt2_s22_Dry3_4_b13.fastq
1.2G filt2_s23_Dry3_5_b21.fastq
2.8G filt2_s24_Wet3_3_b29.fastq
794M filt2_s25_Wet3_4_b37.fastq
2.1G filt2_s26_Wet3_5_b45.fastq
5.0G filt2_s27_P3_3_b53.fastq
1.8G filt2_s28_P3_4_b61.fastq
1.9M filt2_s29_N3_4_b62.fastq
4.3G filt2_s2_Dry1_4_b17.fastq
4.1G filt2_s30_N3_5_b77.fastq
5.1G filt2_s3_Dry1_5_b25.fastq
4.9G filt2_s4_Wet1_3_b33.fastq
 12G filt2_s5_Wet1_4_b41.fastq
5.2G filt2_s6_Wet1_5_b49.fastq
8.4G filt2_s7_P1_3_b57.fastq
4.8G filt2_s8_P1_4_b65.fastq
5.0G filt2_s9_N1_4_b73.fastq
1.9M filt2_unknown_b31.fastq
5.3M filt2_unknown_b55.fastq
1.1M filt2_unknown_b56.fastq


