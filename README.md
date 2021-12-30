# vacuumScripts
to store scripts for dreame d9 pro vaccum

these scripts are to allow executing backup script and voice prompts (wav format) on dreame d9 vaccume.
These files both reside in /mnt/misc

aplayweb.sh script will be called from your remote server (I use node-red).

To backup run following command..

ssh -i <sshKeypath> root@<dreame_ip> backup > "<someLocalFolder>/dreameMap-${todayDate}.tar.gz"
  
To play a wave file on vaccume.. 

ssh -i <sshKeypath> root@<dreame_ip> <full URL of wave file>
