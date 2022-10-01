#!/bin/bash
# Init
FILE="/tmp/out.$$"
GREP="/bin/grep"
#....
# Make sure only root can run our script
if [ "$(id -u)" != "0" ]; then
   echo "Please Run This Script As A ROOT User" 1>&2
   exit 1
fi
# ...


echo "updating Your tmp files"
apt update -y
apt upgrade -y
apt-get update -y
apt-get upgrade -y
apt install zip unzip -y
apt install figlet toilet -y
apt-get install git -y

ufw allow 80
ufw allow 443
ufw allow 3306
ufw allow 8001

clear

figlet -c AIOS

echo ""
echo "* AIOS-AllInOneScript@ v0.1"
echo "*"
echo "* Copyright (C) 2022 - 2023, Ishan Jaiswal"

echo "*"
echo "*"
echo "*"
echo "###########################################################################################################"
echo "*                                                                                                         $"
echo "* [0] Install Jexactyl Panel/Wings/Both.                                                                  $"
echo "* [1] Install Pterodactyl Panel/Wings/Both.                                                               $"
echo "* [2] Uninstall Pterodactyl Panel/Wings/Both.                                                             $"
echo "* [3] Install Dashactyl.                                                                                  $"
echo "* [4] Nuke Vps.                                                                                           $"
echo "*                                                                                                         $"
echo "###########################################################################################################"
echo "All Scripts From Here Are Taken From https://github.com/NotRoyadma/Pterodactyl_SU .They All Belongs To DNxRG"
echo "*                                                                                                         $"
echo "* [5] Install And Setup Database for Pterodactyl/Dashactyl.No Need To Install For Above Scripts.          $"
echo "* [6] Install Desired Amount of Swap Memory [GB]                                                          $"
echo "* [7] Backup Pterodactyl Panel + nginx files with ssl certs + mysql all Databases.                        $"
echo "* [8] Backup Pterodactyl Wings + nginx files with ssl certs + All Server Files + mysql all Databases.     $"
echo "* [9] Both 4 and 5 In The Same Server                                                                     $"
echo "*                                                                                                         $"
echo "###########################################################################################################"
echo "*                                                                                                         $"
echo "* [10] Restore Backups Did by Option Number 4.                                                            $"
echo "* [11] Restore Backups Did by Option Number 5.                                                            $"
echo "* [12] Restore Backups Did by Option Number 6.                                                            $"
echo "*                                                                                                         $"
echo "###########################################################################################################"
echo ""
echo ""

read -p "Enter Input: " input

case $input in  
    0) bash <(curl -s https://raw.githubusercontent.com/NavIshanOp/Jexactyl-scripts-do-not-touch/main/install.sh);;
    1) bash <(curl -s https://raw.githubusercontent.com/NavIshanOp/AIOS/main/SCRIPTS/install.sh);;
    2) bash <(curl -s https://raw.githubusercontent.com/NavIshanOp/AIOS/main/SCRIPTS/uninstall.sh);;
    3) bash <(curl -s https://raw.githubusercontent.com/NavIshanOp/AIOS/main/SCRIPTS/install-dash.sh);;
    4) bash <(curl -s https://raw.githubusercontent.com/NavIshanOp/AIOS/main/SCRIPTS/nuker.sh);;
    5) bash <(curl -s https://raw.githubusercontent.com/NotRoyadma/ptero_database_repo_main/main/database.sh);;
    6) bash <(curl -s https://raw.githubusercontent.com/NotRoyadma/ptero_database_repo_main/main/swp.sh);;
    7) bash <(curl -s https://raw.githubusercontent.com/NotRoyadma/ptero_database_repo_main/main/everything_in_one/ptero_panel_nginx_mysql.sh);;
    8) bash <(curl -s https://raw.githubusercontent.com/NotRoyadma/ptero_database_repo_main/main/everything_in_one/ptero_wings_nginx_mysql_serverfiles.sh);;
    9) bash <(curl -s https://raw.githubusercontent.com/NotRoyadma/ptero_database_repo_main/main/everything_in_one/both_backup.sh);;
    10) bash <(curl -s https://raw.githubusercontent.com/NotRoyadma/ptero_database_repo_main/main/everything_in_one/restore_ptero_panel_nginx_mysql.sh);;
    11) bash <(curl -s https://raw.githubusercontent.com/NotRoyadma/ptero_database_repo_main/main/everything_in_one/restore_ptero_wings_nginx_mysql_serverfiles.sh);;
    12) bash <(curl -s https://raw.githubusercontent.com/NotRoyadma/ptero_database_repo_main/main/everything_in_one/restore_both_backup.sh);;
    *) exit;;
esac
