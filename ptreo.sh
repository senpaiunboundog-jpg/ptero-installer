```bash
#!/bin/bash

# ===============================
#        ZYNOX INSTALLER
# ===============================

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
echo "║             Minimal • Clean • High Performance            ║"
echo "╚══════════════════════════════════════════════════════════╝"
echo ""

echo "[1] 🚀 Install Blueprint 1"
echo "[2] ⚡ Install Blueprint 2 (Fresh Rebuild)"
echo "[3] 🛠 Auto Fix / Repair"
echo "[4] 🛠 hyperv1"
echo ""
echo "[0] Exit"
echo ""

read -p "👉 Enter your choice: " tool

case $tool in

1)
echo "Installing Blueprint..."
bash <(curl -s https://raw.githubusercontent.com/BlueprintFramework/framework/main/install.sh)
read -p "Press enter..."
;;

2)
echo "Fresh Rebuilding Panel..."
cd /var/www/pterodactyl
php artisan down
git pull
composer install --no-dev --optimize-autoloader
php artisan migrate --seed --force
php artisan up
read -p "Press enter..."
;;

3)
echo "Running Repair..."
cd /var/www/pterodactyl
php artisan optimize
php artisan view:clear
php artisan cache:clear
php artisan config:clear
read -p "Press enter..."
;;

4)
echo "Installing hyperv1..."
bash <(curl -s https://raw.githubusercontent.com/hyperv1/install/main/install.sh)
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
echo "                 THEME MANAGER"
echo "=============================================="
echo "1) Nebula (Auto Install)"
echo "2) Euphoria (Auto Install)"
echo "3) Uninstall Themes"
echo "4) Add Tool"
echo "0) Exit"
echo "=============================================="

read -p "Choose an option: " theme

case $theme in

1)
echo "Installing Nebula Theme..."
cd /var/www/pterodactyl
git clone https://github.com/NebulaTheme/pterodactyl nebula
bash nebula/install.sh
read -p "Press enter..."
;;

2)
echo "Installing Euphoria Theme..."
cd /var/www/pterodactyl
git clone https://github.com/EuphoriaTheme/pterodactyl euphoria
bash euphoria/install.sh
read -p "Press enter..."
;;

3)
echo "Removing themes..."
rm -rf /var/www/pterodactyl/resources/themes/*
php artisan view:clear
echo "Themes removed."
read -p "Press enter..."
;;

4)
echo "Installing theme tools..."
npm install
npm run build
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

# ===============================
#        MAIN MENU
# ===============================

while true
do
clear

echo "███████╗██╗   ██╗███╗   ██╗ ██████╗ ██╗  ██╗"
echo "╚══███╔╝╚██╗ ██╔╝████╗  ██║██╔═══██╗╚██╗██╔╝"
echo "  ███╔╝  ╚████╔╝ ██╔██╗ ██║██║   ██║ ╚███╔╝ "
echo " ███╔╝    ╚██╔╝  ██║╚██╗██║██║   ██║ ██╔██╗ "
echo "███████╗   ██║   ██║ ╚████║╚██████╔╝██╔╝ ██╗"
echo "╚══════╝   ╚═╝   ╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝"

echo ""
echo "⚡ ZYNOX DEPLOYMENT SYSTEM ⚡"
echo ""

echo "DEPLOYMENT SERVICES"
echo "[1] VPS       [5] Theme / Blueprint"
echo "[2] Panel"
echo "[3] Wings"
echo ""
echo "MAINTENANCE"
echo "[4] Toolbox"
echo ""
echo "[0] Shutdown"
echo ""

read -p "➜ Command: " option

case $option in

1)
echo "Updating VPS..."
apt update && apt upgrade -y
read -p "Press enter..."
;;

2)
echo "Installing Panel..."
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
apt install htop nano curl wget -y
read -p "Press enter..."
;;

5)
blueprint_menu
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
```
