Chapter 07 Commands - Learning Chef for Linux and macOS
-------------------------------------------------------

0701 Why does Chef have an attribute store?
===========================================
# No commands

0702 Accessing and storing values
=================================
# No commands

0703 motd_attributes cookbook
=============================
cd ~
chef generate cookbook motd_attributes -g code_generator
cd motd_attributes
ls -al
chef generate file motd.sh
atom .
chef generate template motd
atom .
kitchen converge
kitchen login
exit

# Template resource
https://docs.chef.io/resource_template.html

0704 automatic values
=====================
cd motd_attributes
kitchen login
/opt/chef/bin/ohai ipaddress
/opt/chef/bin/ohai virtualization/system
exit

0705 Setting attributes in recipes
==================================
cd motd_attributes
kitchen converge
kitchen login
exit

0706 Setting values in attributes
=================================
cd motd_attributes
chef generate attribute default
atom .
kitchen converge
kitchen login
exit

0707 Basic attribute priority - automatic attributes rule them all
==================================================================
kitchen converge
kitchen login
exit
kitchen login
kitchen converge
kitchen login
exit

0708 Values in recipes override attributes
==========================================
kitchen converge
kitchen login
exit

0709 Last-in wins at the same precedence level
==============================================
kitchen converge
kitchen login
exit

0710 What if I have more than one attribute file?
=================================================
chef generate attribute java
atom .
kitchen converge
kitchen login
exit
kitchen converge
kitchen login
exit

0711 Composed attributes
========================
kitchen converge
kitchen login
exit
kitchen converge
kitchen login
exit

0712 include_recipe
===================
chef generate recipe java
atom .
kitchen converge
kitchen login
exit

0713 override precendence
=========================
atom .
kitchen converge
kitchen login
exit
kitchen converge
kitchen login
exit

0714 Attribute driven uninstalls
================================
# Mark Burgess web site links
http://markburgess.org/bio.html
http://markburgess.org/papers/totalfield.pdf

# Attribute-driven uninstall links from Facebook
https://code.facebook.com/posts/1909042435988955/facebook-chef-cookbooks/
https://github.com/facebook/chef-cookbooks/
# Scaling systems configuration at Facebook - Phil Dibowitz
https://www.youtube.com/watch?v=SYZ2GzYAw_Q

kitchen converge
kitchen login
exit

# Multi-line strings in Chef
https://www.commandercoriander.net/blog/2014/11/09/a-multiline-string-cheatsheet-for-ruby/

# uninstall code is in chapter07/uninstall_motd_as_attribute/motd_attributes
kitchen converge
kitchen login
exit

# uninstall code is in chapter07/uninstall/motd_attributes
kitchen converge
kitchen login
exit

0715 Wrapping Up
================
# No commands
