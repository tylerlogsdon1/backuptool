notify-send "Restore Tool" "Restore Tool must be run from /Other_Tools in your extracted backups directory to work properly. Disregard this if you didnt move the file."
cd ..
cd ./DEBs
notify-send "Restore Tool" "Restore Tool is restoring DEB files from your backup. This may take a while."
sudo dpkg -i *.deb
