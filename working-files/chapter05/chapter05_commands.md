Chapter 05 Commands - Learning Chef for Linux and macOS
-------------------------------------------------------

0501 Why does Chef probe machine configuration?
===============================================
# No commands

0502 What is a node?
====================
# No commands

0503 chef-client in production
==============================
# Verify that you have up-to-date kitchen-dokken drivers
chef --version

# Automated chef-client install with Test Kitchen
mkdir node
cd node
kitchen init --driver=kitchen-dokken --provisioner=dokken
atom .
kitchen create default-centos73
kitchen login default-centos73
ls -al /opt
ls -al /opt/chef
/opt/chef/bin/chef-client --version
exit

# chef-client download link
https://downloads.chef.io/chef

# curl-bash for installing chef-client
https://docs.chef.io/install_omnibus.html

# Install chef-client manually
kitchen login default-centos73
curl -L https://omnitruck.chef.io/install.sh | bash
/opt/chef/bin/chef-client --version
exit
kitchen destroy

0504 Your first chef-client run
===============================
# Your first chef-client run
cd node
kitchen list
kitchen create default-centos73
kitchen login default-centos73
echo 'log "Hello, this is an important message." > hello.rb
cat hello.rb
/opt/chef/bin/chef-client --local-mode hello.rb
/opt/chef/bin/chef-client --local-mode hello.rb --log_level info
exit
kitchen destroy

# chef-client client.rb configuration settings
https://docs.chef.io/config_rb_client.html

0505 chef-client modes
======================
# No commands

0506 What is ohai?
==================
# The ohai meme
http://knowyourmeme.com/memes/oh-hai

# Working with ohai
cd node
kitchen list
kitchen create default-centos73
kitchen login
/opt/chef/bin/ohai | more
/opt/chef/bin/ohai platform
/opt/chef/bin/ohai platform_version
/opt/chef/bin/ohai memory/total
/opt/chef/bin/ohai memory/free
/opt/chef/bin/ohai virtualization/system
exit
kitchen destroy

0507 Wrapping Up
================
# No commands
