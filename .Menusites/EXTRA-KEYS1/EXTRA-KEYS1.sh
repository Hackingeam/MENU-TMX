source $HOME/MENU-TMX/BOT/color.sh


banner(){
bash $HOME/MENU-TMX/BOT/.banner.sh
}

menu(){
clear
banner

nombre="@Hacking-Eam⭐"
echo -e "\e[1;36m  		Extrakeys Termux 1\e[0;m"
echo -e ${verde}[${rojo}+${verde}] ${blanco}'creando ruta/ carpeta\e[0;m'
sleep 5
mkdir -p ~/.termux
mkdir -p /data/data/com.termux/files/home/.termux
echo -e ${verde}[${rojo}+${verde}] ${blanco}'Configurando termux.properties file\e[0;m'
sleep 5
cp -f termux.properties /data/data/com.termux/files/home/.termux
echo -e ${verde}[${rojo}+${verde}] ${blanco}'Reloading keys settings\e[0m'
sleep 5
termux-reload-settings
echo
echo -e "  	\e[1;31m |-------------------------------|"
echo -e "	\e[1;31m |  \e[1;32m[\e[1;31m1\e[1;32m] \e[1;37m VOLVER   |   \e[1;32m[\e[1;31m2\e[1;32m] \e[1;37m EXIT \e[1;31m |"
echo -e " 	\e[1;31m |-------------------------------|"
echo
read -p $'\e[1;34mM \e[1;37mE \e[1;33mN \e[1;35mU \e[1;37m- \e[1;34mT \e[1;37mM \e[1;33mX \e[1;37m: ' option
case $option in

1) cd $HOME/MENU-TMX
	bash menu-tmx.sh
	;;
2)echo -e "\e[1;33mSalir"
        sleep 0.5
         exit
            ;;
*) echo -e "\033[1;31mERROR "
        sleep 0.5
	menu
	;;
esac
}
menu
