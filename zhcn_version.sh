echo "ssh一键生成+添加"
echo "输入ssh密钥用户名，按回车键继续："
read username
echo "输入ssh密钥文件名字"
read name
echo "在接下来的过程中，请根据系统提示输入密码，如果不想输入的话，双击enter"
sudo ssh-keygen  -C $username -f $name
sudo ssh-add $name
echo "完成，所有密钥保存在当前目录"
echo "私钥内容"
sudo cat $name
echo "公钥内容"
sudo cat ${name}.pub
echo "感谢使用！！！"
