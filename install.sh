#!/bin/bash

#基础目录
BaseDir="/etc/ssh_login"

##
# 检查基础目录是否存在
##
CheckDir()
{
    if [ ! -d "$BaseDir" ]; then
        mkdir -p $BaseDir
    fi
}

# 根据类型 安装软件
SYSTEM_NAME=$1
case $SYSTEM_NAME in
    'centos' | 'linux' )
        yum install -y curl expect
        ;;
    'ubuntu' )
        apt-get install -y curl expect
        ;;
    'mac' )
        brew install -y curl expect
        ;;
esac

CheckDir
cd $BaseDir

#写入配置文件
if [ ! -f "$BaseDir/host.ini" ]; then
        touch  $BaseDir/host.ini
fi
if [ ! -f "$BaseDir/ssh_login" ]; then
        touch  $BaseDir/ssh_login
fi
echo host.ini >>$BaseDir/host.ini 
echo -e "写入配置文件host.ini到$BaseDir/host.ini ......\n"

#写入可执行文件
echo ssh_login.sh >>$BaseDir/ssh_login 
chmod u+x $BaseDir/ssh_login
echo -e "写入可执行文件ssh_login到$BaseDir/ssh_login ......\n"

#创建软连
ln -sf  $BaseDir/ssh_login /usr/local/bin/
echo  -e "ssh_login 按装完毕\n"

