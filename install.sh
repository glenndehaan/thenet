#!/bin/bash

echo "████████╗██╗  ██╗███████╗    ███╗   ██╗███████╗████████╗";
echo "╚══██╔══╝██║  ██║██╔════╝    ████╗  ██║██╔════╝╚══██╔══╝";
echo "   ██║   ███████║█████╗      ██╔██╗ ██║█████╗     ██║   ";
echo "   ██║   ██╔══██║██╔══╝      ██║╚██╗██║██╔══╝     ██║   ";
echo "   ██║   ██║  ██║███████╗    ██║ ╚████║███████╗   ██║   ";
echo "   ╚═╝   ╚═╝  ╚═╝╚══════╝    ╚═╝  ╚═══╝╚══════╝   ╚═╝   ";
echo "                                                        ";

echo "Installing The Net..."
echo "WARNING: Make sure your IP has been set to: 0.0.0.1/0"
echo ""
read -p "Press [Enter] to continue..."

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root"
   exit 1
fi

if ! type "ansible" > /dev/null; then
  echo "Missing ansible! Attempting to install now..."
  apt update
  apt install -y python ansible
fi

ansible-playbook -i hosts main.yml
