# Save command
sudo rsync -aAXv --delete --exclude=dev/ --exclude=proc/ --exclude=sys/ --exclude=tmp/ --exclude=run/ --exclude=mnt/ --exclude=media/ --exclude="swapfile" --exclude="lost+found" --exclude=".cache" --exclude=".ecryptfs" / /media/luc/Data/Backups/rsync


# Test SMART data of a drive
# smartctl -t short -a /dev/sdc -d sat > Data_smart_res.txt


# Add the option --dry-run to simulate the backup process. (also, redirect the output to a text file...)

# Restore command
# sudo rsync -aAXv --delete --exclude="lost+found" /backup /system
