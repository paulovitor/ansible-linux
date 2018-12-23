#!/bin/bash

sudo apt-get update
sudo apt-get install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt-get install ansible

echo "==========================================="
echo "		Setting up your linux using ansible"
echo "==========================================="

ansible-playbook -i hosts playbook.yml --verbose

echo "==========================================="
echo "		Finish environment configuration "
echo "==========================================="

exit 0