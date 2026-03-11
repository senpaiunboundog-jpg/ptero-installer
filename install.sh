#!/bin/bash

while true
do
clear

echo " ███████╗██╗   ██╗███╗   ██╗ ██████╗ ██╗  ██╗"
echo " ╚══███╔╝╚██╗ ██╔╝████╗  ██║██╔═══██╗╚██╗██╔╝"
echo "   ███╔╝  ╚████╔╝ ██╔██╗ ██║██║   ██║ ╚███╔╝ "
echo "  ███╔╝    ╚██╔╝  ██║╚██╗██║██║   ██║ ██╔██╗ "
echo " ███████╗   ██║   ██║ ╚████║╚██████╔╝██╔╝ ██╗"
echo " ╚══════╝   ╚═╝   ╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝"

echo ""
echo "────────── ZYNOX DEPLOYMENT SYSTEM ──────────"
echo ""
echo "[1] Install Panel"
echo "[2] Install Wings"
echo "[3] Install Panel + Wings"
echo "[4] Toolbox"
echo "[0] Exit"
echo ""

read -p "➜ Command (0-4): " option

case $option in

1)
echo "Installing Pterodactyl Panel..."
bash <(curl -s https://pterodactyl-installer.se)
read -p "Press Enter to continue..."
;;

2)
echo "Installing Wings..."
bash <(curl -s https://pterodactyl-installer.se)
read -p "Press Enter to continue..."
;;

3)
echo "Installing Panel + Wings..."
bash <(curl -s https://pterodactyl-installer.se)
read -p "Press Enter to continue..."
;;

4)
clear
echo "ZYNOX TOOLBOX"
echo ""
echo "[1] Update Server"
echo "[2] Install Docker"
echo "[3] Install NodeJS"
echo "[0] Back"

read -p "Toolbox Command: " tool

case $tool in
1) apt update && apt upgrade -y ;;
2) curl -sSL https://get.docker.com | sh ;;
3) apt install nodejs npm -y ;;
0) ;;
*) echo "Invalid option" ;;
esac

read -p "Press Enter..."
;;

0)
echo "Exiting..."
exit
;;

*)
echo "Invalid option"
sleep 2
;;

esac
done
