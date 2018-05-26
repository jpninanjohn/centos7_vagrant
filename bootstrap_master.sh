#! /bin/bash

yum install wget -y

#Configure rpm forge 
cd /tmp && wget http://ftp.tu-chemnitz.de/pub/linux/dag/redhat/el7/en/x86_64/rpmforge/RPMS/rpmforge-release-0.5.3-1.el7.rf.x86_64.rpm
rpm -Uvh rpmforge-release-0.5.3-1.el7.rf.x86_64.rpm
yum install rpmforge-release -y

#Configure EPEL repo
yum install epel-release -y

#Configure REMI repository
cd /tmp && wget http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
sudo rpm -Uvh remi-release-7*.rpm -y

yum install ruby-shadow ruby ruby-libs -y
yum install puppet puppet-server facter -y     
yum install vim -y