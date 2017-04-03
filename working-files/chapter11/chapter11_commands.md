Chapter 11 Commands - Learning Chef for Linux and macOS
-------------------------------------------------------

1101 Why translate compliance policy into code?
===============================================
# No commands

1102 Your first compliance profile
==================================
# No commands

1103 Creating the initial structure and metadata
================================================
# NOTE: Can generate new profile with:
# inspec init profile chef_workstation

cd ~
mkdir chef_workstation
cd chef_workstation
atom .
cd ..
inspec exec chef_workstation

1104 Make tests fail as you are writing them
============================================
inspec shell
> help file
quit

inspec exec chef_workstation
docker run --name mycentos73 --detch --tty --interactive centos:7.3.1611 /bin/bash
inspec exec chef_workstation --target docker://mycentos73
docker stop mycentos73
docker rm mycentos73

1105 Introducing match
======================
chef --version
inspec exec chef_workstation --format=progress

1106 Variable regular expressions
=================================
chef --version

# http://rubular.com
/\d+\.\d+\.\d+/

1107 Adding ruby code to a control
==================================
inspec exec chef_workstation

# Programming Ruby
https://pragprog.com/book/ruby4/programming-ruby-1-9-2-0
http://ruby-doc.com/docs/ProgrammingRuby/

1108 Packaging ruby code in a custom matcher
============================================
# Practical Object-Oriented Design in Ruby
http://www.poodr.com/

inspec exec chef_workstation

1109 Wrapping Up
================
# No commands
