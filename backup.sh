#!/bin/bash


clear

function main_function () {

echo "		      BACKBASH		"
echo ""
echo "*************** Main Menu *******************"

echo "---------------------------------------------"
echo ""
echo "1. Backup Word Document."
echo "2. Backup Spreadsheet."
echo "3. Backup pictures."
echo "4. Backup Everything."
echo "5. Restore Word files."
echo "6. Restore Spreadsheet."
echo "7. Restore Pictures."
echo "8. Restore Everything."
echo "9. Exit"


echo ""
read -p "Please select your choice (Numbers) : " number
echo""

case $number in
1) 	echo "Please wait while we backup your word files "
	sudo tar -czPf /home/$USER/doc_back.tar.gz /home/prabesh/*.doc
	sleep 5
	echo "Your files have been backed up"
;;
2) echo "You have selected to backup spreadsheet."
	echo "Please wait while we backup files "
        sudo tar -czPf /home/$USER/xls_back.tar.gz /home/prabesh/*.xls
        sleep 5
        echo "Your files have been backed up"
;;
3) echo "You have selected to backup pictures."
	echo "Please wait while we backup files "
        sudo tar -czPf /home/$USER/img_back.tar.gz /home/prabesh/*.jpeg /home/prabesh/*.jpg /home/prabesh/*.png
        sleep 5
        echo "Your files have been backed up"
;;
4) echo "You have selected to backup everything"
	echo "Please wait while we backup files "
        sudo tar -czPf /home/$USER/all_back.tar.gz /home/prabesh/*
        sleep 5
        echo "Your files have been backed up"
;;
5) echo "You have selected to restore doc files"
	echo "Please wait while we restore your files "
        sudo tar -xvPf /home/$USER/doc_back.tar.gz /home/prabesh/
        sleep 5
        echo "Your files have been restored"
;;
6) echo "You have selected to restore  "
	echo "Please wait while we restore your files "
        sudo tar -xvPf /home/$USER/xls_back.tar.gz /home/prabesh
        sleep 5
        echo "Your files have been backed up"
;;
7) echo "You have selected to restore"
	echo "Please wait while we restore your files "
        sudo tar -czPf /home/$USER/img_back.tar.gz /home/prabesh/
        sleep 5
        echo "Your files have been restored"
;;
8) echo "You have selected to restore"
	echo "Please wait while we restore your files "
        sudo tar -czPf /home/$USER/all_back.tar.gz /home/prabesh/
        sleep 5
        echo "Your files have been restored"
;;
9) echo "You have selected to Exit"
    	echo "Exiting"
	sleep 5
	exit
;;
esac


echo ""

}

if [ $USER == "root" ];
then
        main_function
else
        echo "Permissino denied."
        echo "Adminitrator access required."
        exit
fi

