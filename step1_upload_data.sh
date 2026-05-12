
##############################################################################
## 1. upload and download data
##############################################################################
#login in pulse secure (vpn)
#open local terminal 
ssh username@servername

#if need the public key setup to login in, check here:
https://cbc-uconn.github.io/hpc-docs/connect.html#ssh-keys
#follow the recipe and then open the terminal to login in
#either
ssh username@servername
#or 
ssh username@servername

#upload
#scp pod5/* username@servername:/home/FCAM/username/
scp pod5/*.pod5 username@servername:/scratch/corn20260512/pod5


#download
scp username@servername:/home/FCAM/username/filename ~/Desktop 

#rsync -av --ignore-existing release220/ /scratch/bsteven/gtdb_database/

#or use fillzella
#servername
#usename
#code
#port: 22






