Chapter 06 Commands - Learning Chef for Linux and macOS
-------------------------------------------------------

0601 Why automate message of the day?
=====================================
# Customized motd
http://www.mewbies.com/how_to_customize_your_console_login_message_tutorial.htm

0602 Cookbooks
==============
# Generate a cookbook with the chef command
chef generate cookbook motd
ls
ls -al

0603 Your first Chef run in Test Kitchen
========================================
cd motd
ls -al
atom .
kitchen list
kitchen converge default-centos73
kitchen login
cd /opt/kitchen/cookbooks
ls -al
ls recipes/default.rb
cat recipes/default.rb
cd /opt/chef
cd bin
ls -al
exit
kitchen destroy

0604 Test First Coding - Part 1
===============================
cd motd
# source in chapter06/motd/test/smoke/default_test.rb
atom .
kitchen verify
kitchen destroy
kitchen create
kitchen list
kitchen login default-centos73
ls -al /etc/motd
cat /etc/motd
exit
kitchen verify
chef generate file motd
cat files/default/motd
kitchen converge default-centos73
kitchen verify

# cookbook_file resource documentation
https://docs.chef.io/resource_cookbook_file.html

# Unix Permissions Calculator
http://permissions-calculator.org

0605 Test First Coding - Part 2
===============================
kitchen verify
chef generate file motd.sh
kitchen converge
kitchen verify
kitchen login
exit
kitchen destroy
kitchen verify
kitchen converge

# InSpec command resource
https://inspec.io/docs/reference/resources/command/

0606 Kitchen Test
=================
kitchen --help
kitchen test

0607 Why files/default?
=======================
# No commands

0608 Introduction to regular expressions
========================================
# Rubular - a Ruby regular expression editor
http://rubular.com/

atom
# Install regex-railroad-diagram package

0609 Cookbook generators
========================
# Generating a cookbook template skeleton
chef generate generator

# Testing the cookbook template
chef generate cookbook testy -g code_generator
cd testy
kitchen list
kitchen converge
kitchen login
cat /etc/redhat-release
pidof systemd
rpm -qa | grep net-tools
exit
cd ..
rm -rf testy

# Adding cookbook generator template to your chef config.rb
atom ~/.chef/config.rb
# content
chefdk.generator_cookbook = '~/code_generator'

# Testing the cookbook generator template
chef generate cookbook testy
cd testy
kitchen list


0610 Generator issues with copyright notices
============================================
# Fixing maintainer & copyright fields
cd motd
atom .
# source in chapter06/code_generator/recipes/cookbook.rb

# Testing the chef cookbook template
chef generate cookbook testy -g code_generator
cd testy
kitchen list
more recipes/default.rb
more metadata.rb

0611 Wrapping Up
================
# No commands
