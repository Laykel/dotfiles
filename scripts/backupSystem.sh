# Save of some commands and a script example for backup purposes


# Save command
sudo rsync -azv --delete --exclude=dev/ --exclude=proc/ --exclude=sys/ --exclude=tmp/ --exclude=run/ --exclude=mnt/ --exclude=media/ --exclude="swapfile" --exclude="lost+found" --exclude=".cache" --exclude=".ecryptfs" / /media/luc/Data/Backups/rsync > ~/rsync-report.txt

# Simple home save, without zipping
sudo rsync -va /home/luc/ /media/luc/Data/Backups/home


# TEST SMART DATA
# smartctl -t short -a /dev/sdc -d sat > Data_smart_res.txt

# Add the option --dry-run to simulate the backup process. (also, redirect the output to a text file...)

# RESTORE COMMAND
# sudo rsync -aAXv --delete --exclude="lost+found" /backup /system

# WHERE TO PUT SLASH
# In  other  words,  each of the following commands copies the files in the same
# way, including their setting of the attributes of /dest/foo:

# rsync -av /src/foo /dest
# rsync -av /src/foo/ /dest/foo


# EXAMPLE SCRIPT
#!/bin/sh
# Tech and Me - www.techandme.se
# Incremental daily backups
RSYNC="/usr/bin/sudo /usr/bin/rsync"
TODAY=`date +"%Y%m%d"`
YESTERDAY=`date -d "1 day ago" +"%Y%m%d"`

# Set how many days of backup you want to keep, 3 is default.
OLDBACKUP=`date -d "3 days ago" +"%Y%m%d"`

SHAREUSR="/share/CACHEDEV1_DATA/en0ch.se"

EXCLUDES="$SHAREUSR/servername.excludes"
LOG="$SHAREUSR/BACKUP_success.log"

SOURCE="root@en0ch.se:/"
DESTINATION="$SHAREUSR/$TODAY"

# Keep database backups in a separate directory.
mkdir -p $SHAREUSR/db

# SSH
rsync -avx -e 'ssh -p22' \
 --rsync-path="$RSYNC" \
 --exclude-from=$EXCLUDES \
 --numeric-ids \
 --delete -r \
 --link-dest=../$YESTERDAY $SOURCE $DESTINATION

# MySQL
ssh -p22 root@en0ch.se "mysqldump \
 --user=root \
 --password=SUPER-SECRET-PASSWORD \
 --all-databases \
 --lock-tables \
 | bzip2" > $SHAREUSR/db/$TODAY.sql.bz2

# Un-hash this if you want to remove old backups (older than 3 days)
# rm $SHAREUSR/db/$OLDBACKUP.sql.bz2
# rm -R $SHAREUSR/$OLDBACKUP

# Writes a log of successful updates
echo -e "\nBACKUP success-$TODAY " >> $LOG
