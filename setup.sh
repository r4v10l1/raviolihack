#!/bin/bash

white='\e[1;77m'
cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[0;33m'
BlueF='\e[1;34m' #Biru
RESET="\033[00m" #normal
orange='\e[38;5;166m'

clear
trap 'stop;exit 1' 2


#installation menu
info () {
	printf " \e[1;92m[\e[0m\e[1;77m Y \e[0m\e[1;92m]\e[0m\e[1;93m Start installation. [ RUK may be required for some functions (https://github.com/r4v10l1/RUK) ]\e[0m"
echo
printf " \e[1;92m[\e[0m\e[1;77m N \e[0m\e[1;92m]\e[0m\e[1;93m Exit.\e[0m"
echo

echo
echo -e $okegreen" ┌─["$red"raviolihack$okegreen]──[$green~$okegreen]─["$red"install$okegreen]:"
			echo -ne $okegreen" └─────► " ;tput sgr0
read option	
}


#installation
install (){
#check root
if [[ $option == y || $option == Y ]]; then
if [ $(id -u) != "0" ]; then
echo
echo -e $red [x]::[not root]: You need to be [root] to run this script.;
      echo ""
   	  sleep 1
exit 0
fi
#install

#for the banner
apt-get install toilet
mkdir /root/fonts
cp fonts/graffiti.flf /root/fonts

#for the 99 option
apt-get install cowsay

#finish text
echo
echo
echo "[=======================================================================]"
echo " RAVI0LIHACK HAS BEEN INSTALLED SUCCESSFULLY IN YOUR COMPUTER!! ENJOY"
echo "[=======================================================================]"
echo
sleep 3
clear

#shortcut
shortcut () {
	printf "Do you want to create a shortcut?"
	echo
	printf " \e[1;92m[\e[0m\e[1;77m Y \e[0m\e[1;92m]\e[0m\e[1;93m Create a shortcut.\e[0m"
echo
printf " \e[1;92m[\e[0m\e[1;77m N \e[0m\e[1;92m]\e[0m\e[1;93m Don't create it.\e[0m"
echo

echo
echo -e $okegreen" ┌─["$red"ravi0li$okegreen]──[$green~$okegreen]─["$red"shortcut$okegreen]:"
			echo -ne $okegreen" └─────► " ;tput sgr0
read option	
}

if [[ $option == y || $option == Y ]]; then
cp raviolihack /bin/
sleep 1
clear
echo "Type [raviolihack] to execute it."
echo "Enjoy"

elif [[ $option == n || $option == N ]]; then
echo "OK, Enjoy!"
echo
sleep 1
clear
./raviolihack

else
echo
printf "\e[1;93m [!] Error: opción incorrecta x_x\e[0m\n"
sleep 2
clear
banner
menu
fi

shortcut
}

elif [[ $option == n || $option == N ]]; then
echo "OK, Bye!"
echo
sleep 1
clear
exit

else
echo
printf "\e[1;93m [!] Error: opción incorrecta x_x\e[0m\n"
sleep 2
clear
banner
menu
fi
}

stop (){
echo
printf "Bye! ⏎ "
echo
sleep 2
clear
exit
}

info
install