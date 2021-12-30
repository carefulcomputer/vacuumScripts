# vacuumScripts
These scripts are used for 
1. Make a backup of map and important partition
2. Play wave file from web

So far these scripts have been tested only on a Dreame D9 Pro vacuum. But may work on others (no gurantees)

Both of these files reside in /mnt/misc on vacuum

aplayweb.sh script need to be called from your remote server (I use node-red).

To backup, run following command..

ssh -i <sshKeypath> root@<dreame_ip> backup > "<someLocalFolder>/dreameMap-${todayDate}.tar.gz"
  
To play a wave file on vaccume.. 

ssh -i <sshKeypath> root@<dreame_ip> <full URL of wave file>
