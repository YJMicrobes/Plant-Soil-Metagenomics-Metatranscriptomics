##################################################
## 6. reads based taxonomy - kaiju
##################################################

source ~/.bashrc
conda activate kaiju




#download kaiju database
#https://github.com/bioinformatics-centre/kaiju



wget https://kaiju-idx.s3.eu-central-1.amazonaws.com/2024/kaiju_db_nr_2024-08-25.tgz

mkdir kaijudb
cd kaijudb
kaiju-makedb -s <DB>