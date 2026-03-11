#!/bin/bash

blueprint_menu() {

while true
do
clear

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "     🚀 BLUEPRINT CONTROL PANEL"
echo "     🎨 Theme UI • Modern • Fast"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "[1] Blueprint Tools"
echo "[2] Theme Manager"
echo "[3] Exit"
echo ""

read -p "➜ Select Option: " bp

case $bp in

1)

while true
do
clear

echo "╔══════════════════════════════════════════════════════════╗"
echo "║                 ⚡ BLUEPRINT CONTROL HUB ⚡                ║"
echo "║           Minimal • Clean • High Performance              ║"
echo "╚══════════════════════════════════════════════════════════╝"
echo ""

echo "SELECT AN OPTION:"
echo ""
echo "[1] Install Blueprint 1"
echo "[2] Install Blueprint 2 (Fresh Rebuild)"
echo "[3] Auto Fix / Repair"
echo "[4] hyperv1"
echo ""
echo "[0] Exit Panel"
echo ""

read -p "👉 Enter your choice: " tool

case $tool in

1)
echo "Installing Blueprint 1..."
# command example
bash <(curl -s https://example.com/blueprint1.sh)
read -p "Press enter..."
;;

2)
echo "Installing Blueprint 2..."
bash <(curl -s https://example.com/blueprint2.sh)
read -p "Press enter..."
;;

3)
echo "Running Auto Fix..."
bash <(curl -s https://example.com/repair.sh)
read -p "Press enter..."
;;

4)
echo "Installing HyperV1..."
bash <(curl -s https://example.com/hyperv1.sh)
read -p "Press enter..."
;;

0)
break
;;

*)
echo "Invalid option"
sleep 2
;;

esac
done
;;

2)

while true
do
clear

echo "=============================================="
echo "                 MAIN MENU"
echo "=============================================="
echo "1) Nebula (Auto Install)"
echo "2) Euphoria (Auto Install)"
echo "3) Uninstall"
echo "4) Add Tool (Auto Install)"
echo "0) Exit"
echo "=============================================="

read -p "Choose an option: " theme

case $theme in

1)
echo "Installing Nebula Theme..."
bash <(curl -s https://example.com/nebula.sh)
read -p "Press enter..."
;;

2)
echo "Installing Euphoria Theme..."
bash <(curl -s https://example.com/euphoria.sh)
read -p "Press enter..."
;;

3)
echo "Removing Themes..."
rm -rf /var/www/pterodactyl/resources/themes/*
read -p "Press enter..."
;;

4)
echo "Installing Theme Tools..."
bash <(curl -s https://example.com/themetool.sh)
read -p "Press enter..."
;;

0)
break
;;

*)
echo "Invalid option"
sleep 2
;;

esac
done
;;

3)
break
;;

*)
echo "Invalid option"
sleep 2
;;

esac
done
}

# MAIN MENU

while true
do
clear

echo " ██████╗ ██████╗ ██████╗ ██╗███╗   ██╗ ██████╗      ██╗  ██╗██╗   ██╗██████╗ "
echo "██╔════╝██╔═══██╗██╔══██╗██║████╗  ██║██╔════╝      ██║  ██║██║   ██║██╔══██╗"
echo "██║     ██║   ██║██║  ██║██║██╔██╗ ██║██║  ███╗     ███████║██║   ██║██████╔╝"
echo "██║     ██║   ██║██║  ██║██║██║╚██╗██║██║   ██║     ██╔══██║██║   ██║██╔══██╗"
echo "╚██████╗╚██████╔╝██████╔╝██║██║ ╚████║╚██████╔╝     ██║  ██║╚██████╔╝██████╔╝"
echo " ╚═════╝ ╚═════╝ ╚═════╝ ╚═╝╚═╝  ╚═══╝ ╚═════╝      ╚═╝  ╚═╝ ╚═════╝ ╚═════╝ "
echo ""
echo "──────────────────────────────────────────────────────────"
echo "            ⚡ ZYNOX DEPLOYMENT SYSTEM ⚡"
echo "──────────────────────────────────────────────────────────"
echo ""
echo "DEPLOYMENT SERVICES"
echo "[1] VPS       [5] Theme"
echo "[2] Panel     [6] Edit"
echo "[3] Wings     [7] Container"
echo ""
echo "MAINTENANCE"
echo "[4] Toolbox"
echo ""
echo "[0] Shutdown"
echo ""

read -p "➜ Command (1-7): " option

case $option in

1)
echo "VPS Setup Coming Soon"
read -p "Press enter..."
;;

2)
echo "Installing Pterodactyl Panel..."
bash <(curl -s https://pterodactyl-installer.se)
read -p "Press enter..."
;;

3)
echo "Installing Wings..."
bash <(curl -s https://pterodactyl-installer.se)
read -p "Press enter..."
;;

4)
echo "Opening Toolbox..."
apt update && apt upgrade -y
read -p "Press enter..."
;;

5)
blueprint_menu
;;

6)
nano /etc/pterodactyl/config.yml
;;

7)
docker ps
read -p "Press enter..."
;;

0)
echo "Shutting down..."
exit
;;

*)
echo "Invalid option"
sleep 2
;;

esac
done
