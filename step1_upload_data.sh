
##############################################################################
## 1. upload and download data
##############################################################################
#login in pulse secure (vpn)
#open local terminal 
ssh username@mantis-submit.cam.uchc.edu

#if need the public key setup to login in, check here:
https://cbc-uconn.github.io/hpc-docs/connect.html#ssh-keys
#follow the recipe and then open the terminal to login in
#either
ssh username@login.hpc.cam.uchc.edu
#or 
ssh username@mantis-submit.cam.uchc.edu

#upload
#scp pod5/* username@mantis-submit.cam.uchc.edu:/home/FCAM/username/
scp pod5/*.pod5 username@mantis-submit.cam.uchc.edu:/scratch/corn20260512/pod5


#download
scp username@mantis-submit.cam.uchc.edu:/home/FCAM/username/filename ~/Desktop 

#rsync -av --ignore-existing release220/ /scratch/bsteven/gtdb_database/

#or use fillzella
#transfer.cam.uchc.edu
#usename
#code
#port: 22






