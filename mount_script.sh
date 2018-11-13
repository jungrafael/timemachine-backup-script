
mkdir /Volumes/Backup
mount_smbfs "smb://${MOUNT_USER}:${MOUNT_PASS}@${MOUNT_HOST}/Backup /Volumes/Backup"
hdiutil attach -mountpoint /Volumes/TimeMachineDisk/ '/Volumes/Backup/TimeMachine UUUU.sparsebundle'
sudo tmutil setdestination /Volumes/TimeMachineDisk/
