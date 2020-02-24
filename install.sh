#!/bin/bash

echo "Installing The Net..."
echo "WARNING: Make sure your IP has been set to: 0.0.0.1/0"
echo ""
read -p "Press [Enter] to continue..."

if ! type "ansible" > /dev/null; then
  echo
  apt update
  apt install python ansible
fi

ansible-playbook -i hosts main.yml
