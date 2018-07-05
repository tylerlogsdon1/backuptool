#!/bin/bash
notify-send "Backup Tool" "Backup Tool is running. You may keep working and you will be notified upon completion."
rm BACKUPS.zip
rsync -a /var/cache/apt/archives/*.deb ./cache/DEBs/
rsync -a ~/Documents/* ./cache/Documents/
rsync -a ~/Pictures/* ./cache/Media/
rsync -a ~/Videos/* ./cache/Media/
rsync -a ~/Downloads/* ./cache/Downloads/
rsync -a ~/Music/* ./cache/Music/
cd ./cache
zip -r BACKUPS.zip .
mv BACKUPS.zip ..
cd ..
rm ./cache/DEBs/*.*
rm ./cache/Documents/*.*
rm ./cache/Downloads/*.*
rm ./cache/Media/*.*
rm ./cache/Music/*.*
notify-send "Backup Tool" "Backup Tool has completed. Find your files in BACKUPS.zip."
