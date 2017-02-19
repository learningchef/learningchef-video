Chapter 02 Commands - Learning Chef for Linux and macOS
-------------------------------------------------------

0201 What is a Chef Development Workstation?
============================================
# No commands

0202 Linux Setup - Installing the ChefDK and Git Source Control
===============================================================
# Chef Downloads
https://downloads.chef.io/chef-dk

# Install ChefDK
cd ~/Downloads
ls
sudo dpkg -i chefdk_1.0.3-1_amd64.deb

# ChefDK contents
/opt/chefdk/bin - tool binaries
/usr/bin - soft links to tool binaries
/opt/chefdk/embedded - Ruby scripting engine
/opt/chefdk/gitbin - Git source control

# Omnibus Install
https://github.com/chef/omnibus

# List soft-links in /usr/bin
find /usr/bin -lname '/opt/chefdk/*'
ls -l /usr/bin/chef
echo $PATH
chef --version
which chef

# Configure bashrc
which git
which ruby
eval "$(chef shell-init bash)"
which git
which ruby
chef shell-init
echo 'eval "$(chef shell-init bash)"' >> ~/.bashrc
cat ~/.bashrc
which git
which ruby
git --version
ruby --version

0203 Linux Setup - Installing atom
==================================
# Atom download URL
https://atom.io

# Atom documentation
https://atom.io/docs
http://flight-manual.atom.io/

# Install Atom
cd ~/Downloads
ls
sudo dpkg -i atom-amd64.deb
git --version
sudo dpkg --force-all -i atom-amd64.deb
atom
atom .

0204 macOS Setup - Installing the ChefDK
========================================
# Chef Downloads
https://downloads.chef.io/chef-dk

# ChefDK on macOS is graphical

# ChefDK contents
/opt/chefdk/bin - tool binaries
/usr/bin - soft links to tool binaries
/opt/chefdk/embedded - Ruby scripting engine
/opt/chefdk/gitbin - Git source control

# Omnibus Install
https://github.com/chef/omnibus

# List soft-links in /usr/bin
find /usr/local/bin -lname '/opt/chefdk/*'
ls -l /usr/local/bin/chef
echo $PATH
chef --version
which chef

# Configure bash_profile
which ruby
eval "$(chef shell-init bash)"
which ruby
chef shell-init
echo 'eval "$(chef shell-init bash)"' >> ~/.bash_profile
cat ~/.bash_profile
which ruby
ruby --version

0205 macOS Setup - Installing git
=================================
# Launch command line tools install by running a tool command
git

# Verify install
git --version

0206 macOS Setup - Installing atom
==================================
# Atom download URL
https://atom.io

# Atom documentation
https://atom.io/docs
http://flight-manual.atom.io/

# Atom install on macOS is graphical
atom
atom .
