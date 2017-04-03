Chapter 14 Commands - Learning Chef for Linux and macOS
-------------------------------------------------------

1401 Why use Chef to Chef up your Chef?
=======================================
# No commands

1402 Planning the cookbooks
===========================
# No commands

1403 Creating the chef_workstation wrapper cookbook
===================================================
cd ~
mkdir capstone
cd capstone
atom ~/.chef/config.rb
chef generate cookbook chef_workstation
cd chef_workstation/
atom .
kitchen list
kitchen create default
kitchen list
kitchen destroy

1404 Berkshelf and dependency management
========================================
# Berkshelf - Internet meme - Ermahgerd Girl
http://www.vanityfair.com/culture/2015/10/ermahgerd-girl-true-story

# Berkshelf docs
https://docs.chef.io/berkshelf.html

cd ..
ls
chef generate cookbook git
chef generate cookbook atom
chef generate cookbook chefdk
atom .
ls
cd atom
cd ../chefdk
cd ../git
kitchen list
atom .

1405 Introducing the depends statement and semantic versioning
==============================================================
# Semantic Versioning
http://semver.org

cd ..
atom .

1406 Performing chef runs locally
=================================
cd ..
cd chef_workstation
ls
berks vendor
ls
more Berksfile.lock
ls berks-cookbooks
sudo chef-client --local-mode --config-option cookbook_path="$(pwd)/berks-cookbooks" --override-runlist chef_workstation
sudo rm -rf nodes
rm -rf berks-cookbooks
ls
atom solo.sh
chef --version
chmod +x solo.sh

1407 Git cookbook
=================
# Chef Supermarket build-essential
https://supermarket.chef.io/cookbooks/build-essential

cd ..
ls
atom .
ohai family
cd git
kitchen converge default-ubuntu1604-desktop
kitchen verify default-ubuntu1604-desktop
kitchen list
kitchen converge default-macos1012-desktop
kitchen verify default-macos1012-desktop

1408 atom cookbook
==================
vagrant global-status
kitchen destroy
cd ..
cd atom
atom .
kitchen converge default-ubuntu1604-desktop
kitchen verify default-ubuntu1604-desktop
kitchen converge default-macos1012-desktop
kitchen verify default-macos1012-desktop

1409 chefdk cookbook
====================
cd ..
cd chefdk
atom .
kitchen converge default-ubuntu1604-desktop
kitchen verify default-ubuntu1604-desktop
kitchen converge default-macos1012-desktop
kitchen verify default-macos1012-desktop

1410 Final local chef run
=========================
cd ..
inspec exec chef_workstation_cp
cd chef_workstation
./solo.sh

# Bootstrap ChefDK
https://github.com/Nordstrom/chefdk_bootstrap
https://www.youtube.com/watch?v=kfQy8UzBUvY

1411 Wrapping up
================
# No commands
