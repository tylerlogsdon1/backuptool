cd ..
cd ./DEBs
notify-send "Backup Tool" "Backup Tool is restoring DEB files from your backup. This may take a while."
sudo dpkg -i *.deb
