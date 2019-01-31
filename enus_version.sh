#!/bin/bash
echo "----------------"
echo "----SSH-GEN-----"
echo "--BY:ArthurDrc--"
echo "----------------"
echo "Enter the username your want your ssh key for:"
read username
echo "Enter the name you want your SSH keys to be:"
read name
sudo ssh-keygen  -C $username -f $name
sudo ssh-add $name
echo "Content of private key:"
sudo cat $name
echo "Content of public key:"
sudo cat ${name}.pub
echo "Complete, keys saved in the directory where you run this script and the identity is added."
echo “Thanks for using!”
