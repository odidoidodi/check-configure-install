#!/bin/bash
##Check  OS  distribution and install apache  web server and mysql-client
if [[ -f /etc/os-release ]]; then
    distro=$(grep -oP '(?<=^ID=).+' /etc/os-release | tr -d '"')

	if [ $distro = 'ubuntu' ]
        then
		echo `sudo apt update`
		echo `sudo apt install -y  apache2  mysql-server`
		echo `sudo systemctl start apache2.service`
		echo `sudo systemctl status apache2.service`
	elif [ $distro = 'centos' ]
	then
		echo `sudo yum update`
		echo `sudo yum  install httpd mysql-server -y`
		echo `sudo systemctl start mysqld`
		echo `sudo systemctl start  httpd`
		echo `sudo systemctl status httpd`
	fi
else
    echo "This is different Linux distribution."
fi



