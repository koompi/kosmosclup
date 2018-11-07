#!/usr/bin/env bash
#Author : Koompi Team
#Version......: 1.00


cat << EOF 

   _  ______   ____  __  __ _____ _____   _  ______   _____ __  __  ____   _____ 
 | |/ / __ \ / __ \|  \/  |  __ \_   _| | |/ / __ \ / ____|  \/  |/ __ \ / ____|
 | ' / |  | | |  | | \  / | |__) || |   | ' / |  | | (___ | \  / | |  | | (___  
 |  <| |  | | |  | | |\/| |  ___/ | |   |  <| |  | |\___ \| |\/| | |  | |\___ \ 
 | . \ |__| | |__| | |  | | |    _| |_  | . \ |__| |____) | |  | | |__| |____) |
 |_|\_\____/ \____/|_|  |_|_|   |_____| |_|\_\____/|_____/|_|  |_|\____/|_____/ 
                                                                                
                                                    CLEAN UP  v1.0                            
                                                                                                                                                          
EOF
                                                                    

#Add git to system
sudo apt-get install git -y
#Remove wps-office from system
sudo apt remove wps-office -y
sudo apt autoremove -y
#Install LibraOfiice
sudo add-apt-repository ppa:libreoffice/ppa -y
sudo apt update -y
sudo apt install libreoffice -y




#Clone File to system
cd /
cd tmp
git clone https://github.com/Koompi/kosmosclup.git
cd /
cd tmp
cd kosmosclup
ls
#move libraaccount-glib
sudo rsync -avz libaccounts-glib/* /home/koompi/.config/libaccounts-glib/
#move paper
sudo rsync -avz Paper/* /usr/share/icons/Paper/

#move ttf-khmeros
sudo rsync -avz ttf-khmeros/* /usr/share/fonts/truetype/ttf-khmeros/
cd ..
rm -rf kosmosclup

echo "Done!!!"
echo "Thank you for using KOOMPI"
