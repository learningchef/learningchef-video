Chapter 13 Commands - Learning Chef for Linux and macOS
-------------------------------------------------------

1301 Automating config of the OS itself
=======================================
http://learningchef.com

1302 Host versus Guest
======================
# No commands

1303 Host Setup
===============
# VirtualBox 5.1.4
https://www.virtualbox.org
# Vagrant 1.9.0
https://releases.hashicorp.com/vagrant/
# Packer 0.12.2
https://www.packer.io/downloads.html

VBoxManage --version
vagrant --version
sudo mkdir -p /usr/local/bin
sudo chown -R $(whoami) /usr/local/bin
sudo cp ~/Downloads/packer /usr/local/bin/packer
echo $PATH
packer --version

1304 Creating a Linux Desktop virtual machine
=============================================
# Ubuntu Desktop ISO
http://releases.ubuntu.com/16.04/ubuntu-16.04.2-desktop-amd64.iso

1305 Installing Ubuntu 16.04 Desktop
====================================
sudo ls
sudo groupadd -r admin
sudo usermod -a -G admin vagrant
sudo nano /etc/sudoers.d/vagrant
# vagrant ALL=(ALL) NOPASSWD: ALL
Ctrl-X Save

sudo ls
sudo apt-get update
sudo apt-get install -y dkms

sudo apt-get remove -y openssh-server openssh-client
sudo apt-get install -y openssh-client openssh-server
mkdir /home/vagrant/.ssh
chmod 700 /home/vagrant/.ssh
sudo apt-get remove -y libcurl3-gnutls
sudo apt-get install curl
curl -L https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub > /home/vagrant/.ssh/authorized_keys

1306 Capturing the Linux Desktop VM with Packer
===============================================
cd ubuntu1604-desktop
ls
atom .
packer --help
packer validate ubuntu1604-desktop.json
packer build ubuntu1604-desktop.json

mkdir tmp
cd tmp
tar ../ubuntu1604-desktop.box
tar xvf ../ubuntu1604-desktop.box
cat Vagrantfile
cd ..
rm -rf tmp
ls

1307 Verifying the Linux Desktop VM
===================================
cd ubuntu1604-desktop
vagrant box add --name ubuntu1604-desktop ubuntu1604-desktop.box
vagrant box list
ls
mkdir test
cd test
vagrant init ubuntu1604-desktop
atom Vagrantfile
vagrant up
vagrant ssh
exit
vagrant destroy -f

1308 Creating a macOS virtual machine
=====================================
mkdir macos1012-desktop
cd macos1012-desktop
git clone https://github.com/timsutton/osx-vm-templates
cd osx-vm-templates
sudo prepare_iso/prepare_iso.sh -D DISABLE_REMOTE_MANAGEMENT "/Applications/Install macOS Sierra.app" dmg
ls dmg

1309 Installing macOS
=====================
mkdir /Users/vagrant/.ssh
chmod 700 /Users/vagrant/.ssh
curl -L https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub > /home/vagrant/.ssh/authorized_keys
chmod 600 /User/vagrant/.ssh/authorized_keys
chown -R vagrant /Users/vagrant/.ssh
ls -al /Users/vagrant/.ssh
git --version

1310 Capturing the macOS VM with Packer
=======================================
cd macos1012-desktop
atom .
packer --help
packer validate macos1012-desktop.json
packer build macos1012-desktop.json
ls

1311 Verifying the macOS VM
===========================
cd macos1012-desktop
vagrant box add --name macos1012-desktop macos1012-desktop.box
vagrant box list
ls
mkdir test
cd test
vagrant init macos1012-desktop
atom Vagrantfile
vagrant up
vagrant ssh
exit
vagrant destroy -f

1312 Wrapping Up
================
# No commands
