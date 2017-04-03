Chapter 10 Commands - Learning Chef for Linux and macOS
-------------------------------------------------------

1001 Why automate validation?
=============================
http://inspec.io

1002 Scanning a docker node with a hardening profile
====================================================
https://github.com/dev-sec

cd ~
docker run --name mycentos73 --detch --tty --interactive centos:7.3.1611 /bin/bash
git clone https://github.com/dev-sec/linux-baseline.git
ls linux-baseline
inspec exec linux-baseline --target docker://mycentos73
cd linux-baseline
atom .
docker stop mycentos73
docker rm mycentos73


1003 Scanning a node with a hardening profile via ssh
=====================================================
# spin up node on digital ocean

inspec help exec
cd ~
inspec exec linux-baseline -t ssh://root@<ip_addr> --key-files ~/.ssh/id_rsa

# remember to delete your digital ocean node

1004 Scanning a local machine with inspec
=========================================
ssh root@<linux_machine>
git --version
yum install git
cat /etc/redhat-release
git clone https://github.com/dev-sec/linux-baseline.git
curl -LO https://packages.chef.io/files/stable/chefdk/1.1.16/el/7/chefdk-1.1.16-1.el7.x86_64.rpm
yum install chefdk-1.1.16-1.el7.x86_64.rpm
inspec exec linux-baseline

1005 Formatting modes
=====================
inspec help exec
inspec exec linux-baseline --format=cli
inspec exec linux-baseline --format=progress
inspec exec linux-baseline --format=documentation
inspec exec linux-baseline --format=json
inspec exec linux-baseline --format=json-min
inspec exec linux-baseline --format=junit

# Controls
https://github.com/dev-sec/linux-baseline/blob/master/control/sysctl_spec.rb

1006 control resource
=====================
https://www.cisecurity.org

https://github.com/dev-sec/linux-baseline/blob/master/controls/os_spec.rb

1007 Audit resources
====================
inspec shell
> help file
> help service
quit

1008 Its form
=============
# No commands

1009 Wrapping Up
================
# No commands
