# sudo rsync -aAXv --delete --exclude=/dev/* --exclude=/proc/* --exclude=/sys/* --exclude=/tmp/* --exclude=/run/* --exclude=/mnt/* --exclude=/media/* --exclude="swapfile" --exclude="lost+found" --exclude=".cache" --exclude=".ecryptfs" /source /destination

# You can also add the option --dry-run to simulate the backup process.

# Restore command
# sudo rsync -aAXv --delete --exclude="lost+found" /backup /system
