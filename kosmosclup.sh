#!/usr/bin/env bash
# Author : Lyhour Chhen
# Version: v0.01
cat << EOF 
   _  ______   ____  __  __ _____ _____   _  ______   _____ __  __  ____   _____ 
 | |/ / __ \ / __ \|  \/  |  __ \_   _| | |/ / __ \ / ____|  \/  |/ __ \ / ____|
 | ' / |  | | |  | | \  / | |__) || |   | ' / |  | | (___ | \  / | |  | | (___  
 |  <| |  | | |  | | |\/| |  ___/ | |   |  <| |  | |\___ \| |\/| | |  | |\___ \ 
 | . \ |__| | |__| | |  | | |    _| |_  | . \ |__| |____) | |  | | |__| |____) |
 |_|\_\____/ \____/|_|  |_|_|   |_____| |_|\_\____/|_____/|_|  |_|\____/|_____/ 
                                                                                
                                                    CLEAN UP  v0.01                            
                                                                                                                                                          
EOF
                                                                    
#Remove wps-office from system
sudo apt remove wps-office -y
sudo apt autoremove -y
#Install LibraOfiice
sudo add-apt-repository ppa:libreoffice/ppa -y
sudo apt update -y
sudo apt install libreoffice -y

#move libraaccount-glib
sudo rsync -avz ./resources/libaccounts-glib/* /home/koompi/.config/libaccounts-glib/
#move paper
sudo rsync -avz ./resources/Paper/* /usr/share/icons/Paper/
#move ttf-khmeros
sudo rsync -avz ./resourses/ttf-khmeros/* /usr/share/fonts/truetype/ttf-khmeros/
cd ..
echo "Deleting file...."
rm -rf kosmosclup

echo "Done!!!"
echo "Thank you for using KOOMPI"
