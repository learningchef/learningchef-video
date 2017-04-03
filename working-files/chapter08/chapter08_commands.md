Chapter 08 Commands - Learning Chef for Linux and macOS
-------------------------------------------------------

0801 Why automate web server configuration?
===========================================
# No commands

0802 Four basic resources
=========================
# No commands

0803 nginx Cookbook requirements
================================
# No commands

0804 Cookbook documentation and metadata are important
======================================================
# Our previous README.md
https://github.com/learningchef/learningchef-video/tree/master/working-files/chapter06/motd

# Docker cookbook README.md
https://github.com/chef-cookbooks/docker

chef generate cookbook nginx -g code_generator
cd nginx
# source in chapter08/nginx
atom .

0805 package resource
=====================
# Inspec package resource documentation
http://inspec.io/docs/reference/resources/package/

# Chef package resource documentation
https://docs.chef.io/resource.html#package

# EPEL
https://fedoraproject.org/wiki/EPEL/FAQ

kitchen list
kitchen converge
# will fail
kitchen converge
# will fail
kitchen converge
kitchen verify
kitchen destroy

# To recover from weird kitchen-dokken errors
kitchen destroy
rm -rf .kitchen

0806 Actions have defaults
==========================
# Chef package resource documentation
https://docs.chef.io/resource.html#package

atom .
kitchen list
kitchen converge
kitchen verify

0807 service resource
=====================
kitchen converge
# will fail
kitchen converge
kitchen verify
kitchen login
rpm -qa | grep nginx
systemctl is-enabled nginx
exit

0808 Add content to the website
===============================
kitchen converge
kitchen verify
chef generate template index.html
kitchen converge
kitchen verify
kitchen login
curl localhost
exit

0809 Verifying nginx on your host
=================================
kitchen destroy
kitchen converge
kitchen verify
# visit http://localhost:9080 in a web browser on your host
kitchen destroy

0810 Wrapping up
================
# No commands
