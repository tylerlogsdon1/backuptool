xdotool windowminimize $(xdotool getactivewindow)
notify-send "Backup Tool" "Backup Tool is running. You may keep working and you will be notified upon completion."
rm BACKUPS.zip
rm ./cache/DEBs/*.*
rm ./cache/Documents/*.*
rm ./cache/Downloads/*.*
rm ./cache/Media/*.*
rm ./cache/Music/*.*
cp /var/cache/apt/archives/*.deb ./cache/DEBs/
cp ~/Documents/*.* ./cache/Documents/
cp ~/Pictures/*.* ./cache/Media/
cp ~/Videos/*.* ./cache/Media/
cp ~/Downloads/*.* ./cache/Downloads/
cp ~/Music/*.* ./cache/Music/
cd ./cache
zip -r BACKUPS.zip .
mv BACKUPS.zip ..
cd ..
rm ./cache/DEBs/*.*
rm ./cache/Documents/*.*
rm ./cache/Downloads/*.*
rm ./cache/Media/*.*
rm ./cache/Music/*.*
notify-send "Backup Tool" "Backup Tool has been packaged inside of BACKUPS.zip to make it portable."
notify-send "Backup Tool" "Backup Tool has completed. Find your files in BACKUPS.zip."

