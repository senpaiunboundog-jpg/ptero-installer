#!/bin/bash

echo "Updating server..."
apt update -y && apt upgrade -y

echo "Installing Pterodactyl Panel..."
bash <(curl -s https://pterodactyl-installer.se)

echo "Done!"
