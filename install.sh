#HACKING-EAM
#
#Colores
#
source $HOME/MENU-TMX/BOT/color.sh
#instalcion de comndos
#
banner(){
clear
bash $HOME/MENU-TMX/BOT/.banner.sh

}

banner
echo -e ${blanco}"
INSTALANDO REQUISITOS...
"${blanco}
echo -e ${amarillo}[${morado}√${amarillo}]${cyan} "Instalando curl... "
pkg install -y curl > /dev/null 2>&1
echo -e ${amarillo}[${morado}√${amarillo}]${cyan} "instalando python... "
pkg install -y python > /dev/null 2>&1
echo -e ${amarillo}[${morado}√${amarillo}]${cyan} "instalando python2... "
pkg install -y python2 > /dev/null 2>&1

cd $HOME/MENU-TMX
chmod 7777 menu-tmx.sh

echo -e ${amarillo}"
REQUISITOS INSTALADOS CORRECTAMENTE
EJECUTE EL COMANDO ${cyan}>>> ${rojo}./ menu-tmx.sh
"${blanco}
