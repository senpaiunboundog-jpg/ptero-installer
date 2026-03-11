#!/bin/bash

clear

echo " ███████╗██╗   ██╗███╗   ██╗ ██████╗ ██╗  ██╗"
echo " ╚══███╔╝╚██╗ ██╔╝████╗  ██║██╔═══██╗╚██╗██╔╝"
echo "   ███╔╝  ╚████╔╝ ██╔██╗ ██║██║   ██║ ╚███╔╝ "
echo "  ███╔╝    ╚██╔╝  ██║╚██╗██║██║   ██║ ██╔██╗ "
echo " ███████╗   ██║   ██║ ╚████║╚██████╔╝██╔╝ ██╗"
echo " ╚══════╝   ╚═╝   ╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝"

echo ""
echo "  ─────────────────────────────────────"
echo "        ZYNOX DEPLOYMENT SYSTEM"
echo "  ─────────────────────────────────────"
echo ""
echo " [1] Install Panel"
echo " [2] Install Wings"
echo " [3] Install Panel + Wings"
echo " [4] Toolbox"
echo " [0] Exit"
echo ""

read -p " ➜ Command (0-4): " option

case $option in

1)
echo "Installing Panel..."
bash <(curl -s https://pterodactyl-installer.se)
;;

2)
echo "Installing Wings..."
bash <(curl -s https://pterodactyl-installer.se)
;;

3)
echo "Installing Panel + Wings..."
bash <(curl -s https://pterodactyl-installer.se)
;;

4)
echo "Opening toolbox..."
apt update && apt upgrade -y
;;

0)
echo "Bye!"
exit
;;

*)
echo "Invalid option"
;;

esac
