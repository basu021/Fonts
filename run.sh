#!/bin/bash

re="\e[0m"
grn="\e[38;5;46m"
plus="\e[1;49;92m[\e[1;49;93m+\e[1;49;92m]\e[0m"
dot="\e[1;49;92m[\e[1;49;93m•\e[1;49;92m]\e[0m"
err="\e[1;49;92m[\e[1;49;31m!\e[1;49;92m]\e[0m"
ts="\e[1;49;93m[\e[5;49;36m≈\e[1;49;93m]\e[0m"
bc="\e[1;31m"
bs="\e[38;5;245m"
ninen="\e[1;49;31m[\e[0m99\e[1;49;31m]\e[0m"
sixs="\e[1;49;31m[\e[0m66\e[1;49;31m]\e[0m"

banner(){

lineo() {
echo -e "$grn++++++++++++++++++++++++++++++++++++++++++++$re";
}
logo() {
echo -e "$bc███████$bs╗ $bc██████$bs╗ $bc███$bs╗   $bc██$bs╗$bc████████$bs╗$bc███████$bs╗$re";
echo -e "$bc██$bs╔════╝$bc██$bs╔═══$bc██$bs╗$bc████$bs╗  $bc██$bs║╚══$bc██$bs╔══╝$bc██$bs╔════╝$re";
echo -e "$bc█████$bs╗  $bc██$bs║   $bc██$bs║$bc██$bs╔$bc██$bs╗ $bc██$bs║   $bc██$bs║   $bc███████$bs╗$re";
echo -e "$bc██$bs╔══╝  $bc██$bs║   $bc██$bs║$bc██$bs║╚$bc██$bs╗$bc██$bs║   $bc██$bs║   ╚════$bc██$bs║$re";
echo -e "$bc██$bs║     ╚$bc██████$bs╔╝$bc██$bs║ ╚$bc████$bs║   $bc██$bs║   $bc███████$bs║$re";
echo -e "$bs╚═╝      ╚═════╝ ╚═╝  ╚═══╝   ╚═╝   ╚══════╝$re";
}
linem() {
echo -e "$grn--------------------------------------------$re";
}
text() {
echo
echo -e "$ts 𝔸𝕦𝕥𝕙𝕠𝕣: Basudev Rout";
echo
echo -e "$ts 𝕀𝕟𝕤𝕥𝕒𝕘𝕣𝕒𝕞: @basudevrout2001";
echo
echo -e "$ts 𝔾𝕚𝕥𝕙𝕦𝕓: https://github.com/basu021";
echo
}
lineb() {
echo -e "$grn--------------------------------------------$re";
echo
}

lineo
logo
linem
text
lineb

}

option() {


echo -e "\e[1;49;92m{\e[1;49;93m1\e[1;49;92m}$re Add to Pics Art";
echo
echo -e "\e[1;49;92m{\e[1;49;93m2\e[1;49;92m}$re Add to Sdcard";
echo
echo -e "\e[1;49;92m{\e[1;49;93m3\e[1;49;92m}$re Add to Defult Path";
echo
echo -e "\e[1;49;92m{\e[1;49;93m4\e[1;49;92m}$re Update Fonts";
echo
echo -e "\e[1;49;92m{\e[1;49;93m5\e[1;49;92m}$re Exit";


echo
echo
echo
echo -e -n "$plus Choose an option: ";

read option

if [[ $option == 1 || $option == 01 ]]; then

echo
picsart

elif [[ $option == 2 || $option == 02 ]]; then

sdcard

elif [[ $option == 3 || $option == 03 ]]; then
echo
dpath

elif [[ $option == 4 || $option == 04 ]]; then
update
echo
elif [[ $option == 5 || $option == 05 ]]; then
exit 1

else

echo -e "$err Invalid Input"

fi

}



picsart() {

echo
echo -e "$plus Checking if app is installed or not";
echo


if [ ! -d /sdcard/PicsArt/Fonts ] ; then
    echo -e "$err Pics art is not installed. Install and open pics art."
    echo
    echo -e "$dot If Pics art is installed and you are facing error give storage"
    echo -e "permission and start again or send screenshot to +91 8249198256 (Whatsapp)"
    echo
    echo -e "$ninen Exit                        $sixs Go back"
echo
echo
echo -e -n "$plus Choose an option: ";
read opt

if [[ $opt == 99 ]]; then
echo
exit

elif [[ $opt == 66 ]]; then
clear
banner | lolcat;
option

else

echo -e "$err Invalid input ... Restart the tool again ."
echo
sleep 2s
exit 1

fi


else


   echo
   echo -e "[√] Requirements satisfied";
   echo
   cp files/fonts.zip /sdcard/PicsArt/Fonts
   cd /sdcard/PicsArt/Fonts
   unzip fonts.zip
   rm fonts.zip
   cd
   cd Fonts
   echo
sleep 5s
echo -e "[✓] Fonts added successfully";
echo
echo
echo -e "$ninen Exit                        $sixs Go back"
echo
echo
echo -e -n "$plus Choose an option: ";
read opt

if [[ $opt == 99 ]]; then
exit 1


elif [[ $opt == 66 ]]; then
clear
banner | lolcat;
option

else

echo -e "$err Invalid input ... Restart the tool again ."
echo
sleep 2s
exit 1

fi


fi

}

permission() {

echo
echo -e "$plus Allow all permission to continue..."
echo
termux-setup-storage
echo

}

storage() {

echo
   echo -e "$plus Creating folder ..."
   echo
   echo -e "$plus Created a folder named Fonts"
   echo
   echo -e "$plus Adding fonts"
   echo
   echo -e "$plus Successfully Added"
   echo
   echo -e "$ninen Exit                        $sixs Go back"


echo
echo
echo -e -n "$plus Choose an option: ";
read opt

if [[ $opt == 99 ]]; then
exit 1


elif [[ $opt == 66 ]]; then
clear
banner | lolcat;
option

else

echo -e "$err Invalid input ... Restart the tool again ."
echo
sleep 2s
exit 1

fi
}

sdcard() {

echo -e "$plus Adding fonts into Sdcard"
echo
if [ ! -d /sdcard/Fonts ] ; then
echo
echo -e "$plus Creating Fonts folder in Sdcard"
echo
cd /sdcard
mkdir Fonts
cd
cd Fonts
echo
echo -e "[✓] Folder created successfully"
sdcard

else
echo -e "[√] Requirements satisfied";
   echo
   cp files/fonts.zip /sdcard/Fonts
   cd /sdcard/Fonts
   unzip fonts.zip
   rm fonts.zip
   cd
   cd Fonts
   echo
sleep 5s
echo -e "[✓] Fonts added successfully";
echo
echo -e "$plus You can find your fonts in Phone storage-Fonts folder"
echo
echo
echo -e "$ninen Exit                        $sixs Go back"
echo
echo
echo -e -n "$plus Choose an option: ";
read opt

if [[ $opt == 99 ]]; then
exit 1


elif [[ $opt == 66 ]]; then
clear
banner | lolcat;
option

else

echo -e "$err Invalid input ... Restart the tool again ."
echo
sleep 2s
exit 1

fi

fi
}

dpath() {

echo -e "$dot Preparing fonts to move to SD card";
echo
echo -e -n "$plus Enter your path (e.g. :- /sdcard/folder_name): ";
read path
echo
echo -e "$dot Checking directory ...";
echo
echo
cpath
}

cpath() {

if [ ! -d $path ] ; then

echo -e "$err Folder not found"
echo
echo -e "$plus Creating folder in $path"
echo
mkdir $path
echo -e "[✓] Successfully created $path"
echo
cpath

else

echo -e "[√] Directory exist"
echo
echo -e "$plus Moving fonts ..."
echo
cp files/fonts.zip $path
   cd $path
   unzip fonts.zip
   rm fonts.zip
   cd
   cd Fonts
   echo
sleep 4s
echo -e "[✓] Fonts added successfully";
echo
echo -e "$plus You can find your fonts in $path"
echo
echo
echo -e "$ninen Exit                        $sixs Go back"
echo
echo
echo -e -n "$plus Choose an option: ";
read opt

if [[ $opt == 99 ]]; then
exit 1


elif [[ $opt == 66 ]]; then
clear
banner | lolcat;
option

else

echo -e "$err Invalid input ... Restart the tool again ."
echo
sleep 2s
exit 1

fi



fi

}

update() {
echo


}



#permission

clear
banner
option

