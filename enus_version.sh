echo "SSH key generating v1.0"
echo "Enter the username your want your ssh key for:"
read username
echo "Enter the name you want your SSH keys to be"
read name
sudo ssh-keygen  -C $username -f $name
sudo ssh-add $name
echo "Complete, keys saved in the directory where you run this script"
echo "Content of private key:"
sudo cat $name
echo "Content of public key:"
sudo cat ${name}.pub
echo "Thanks for using!"
