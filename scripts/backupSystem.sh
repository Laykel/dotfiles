# Save command
sudo rsync -aAXv --delete --exclude=dev/ --exclude=proc/ --exclude=sys/ --exclude=tmp/ --exclude=run/ --exclude=mnt/ --exclude=media/ --exclude="swapfile" --exclude="lost+found" --exclude=".cache" --exclude=".ecryptfs" / /media/luc/Elements/Lunito/Backup/rsync >> rsyncDryRun.txt

# You can also add the option --dry-run to simulate the backup process.

# Restore command
sudo rsync -aAXv --delete --exclude="lost+found" /backup /system

# In other words, each of the following commands copies the files in the same way,  including  their  setting  of  the
# 	attributes of /dest/foo:

# 	rsync -av /src/foo /dest
# 	rsync -av /src/foo/ /dest/foo
