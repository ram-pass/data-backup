#######################################
# Sync Home directory into External HDD
# By Yogi
######################################
set -e

echo    "#######################################################"
echo    " Sync Home directory into External HDD"
echo -e "#######################################################\n"
df -hT
echo
echo "Type the Full path of mounted directory of external HDD"
echo "The default directory is /media/yogi/Yogi"
read -p '[press Enter for default or Type the path]: ' dir1
dir1=${dir1:-/media/yogi/Yogi}
echo $dir1/Pop-os
ls $dir1/Pop-os || exit 1
sudo rsync -auv --delete --include-from=rsync-include-files.txt --exclude-from=rsync-exclude-files.txt /home/yogi/ $dir1/Pop-os
