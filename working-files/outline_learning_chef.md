Learning Chef (for Linux and macOS) - Course Outline

01. Introduction
  0101 Introduction
  0102 Why Chef?
  0103 About The Author
  0104 How to Access Your Working Files

02. Getting Started with the ChefDK
  0201 What is a Chef Development Workstation?
  0202 Linux Setup - Installing the ChefDK and Git Source Control
  0203 Linux Setup - Installing Atom
  0204 macOS Setup - Installing the ChefDK
  0205 macOS Setup - Installing Git
  0206 macOS Setup - Installing Atom

03. Your first Chef program
  0301 Why model your infrastructure as code?
  0302 Hello World
  0303 Examining hello.rb
  0304 Linting code with Cookstyle
  0305 Running Cookstyle within Atom
  0306 Automated Verification with InSpec
  0307 Resilient Infrastructure with Chef
  0308 Handling Uninstalls
  0309 Wrapping Up

04. Getting Started with Test Kitchen
  0401 Why use Test Kitchen?
  0402 Test Kitchen and Docker
  0403 What if my machine can't run Docker?
  0404 What if I want to target macOS?
  0405 Installing Docker on Linux
  0406 Installing Docker on macOS
  0407 Docker and DigitalOcean
  0408 Introducing Test Kitchen
  0409 YAML Basics
  0410 Validating YAML in Atom
  0411 Test Kitchen configuration file format overview
  0412 Wrapping Up

05. How Chef discovers information about a system
  0501 Why does Chef probe machine configuration?
  0502 What is a node?
  0503 chef-client in production
  0504 Your first chef-client run
  0505 chef-client modes
  0506 What is ohai?
  0507 Wrapping Up

06. Your first cookbook - message of the day
  0601 Why automate message of the day?
  0602 Cookbooks
  0603 Your first Chef run in Test Kitchen
  0604 Test First Coding - Part 1
  0605 Test First Coding - Part 2
  0606 Kitchen Test
  0607 Why files/default?
  0608 Introduction to regular expressions
  0609 Cookbook generators
  0610 Generator issues with copyright notices
  0611 Wrapping Up

07. Managing settings with Chef
  0701 Why does Chef have an attribute store?
  0702 Accessing and storing values
  0703 motd_attributes cookbook
  0704 automatic values
  0705 Setting attributes in recipes
  0706 Setting values in attributes
  0707 Basic attribute priority - automatic attributes rule them all
  0708 Values in recipes override attributes
  0709 Last-in wins at the same precedence level
  0710 What if I have more than one attribute file?
  0711 Composed attributes
  0712 include_recipe
  0713 override precendence
  0714 Attribute driven uninstalls  
  0715 Wrapping Up

08. Cookbook authoring and use
  0801 Why automate web server configuration?
  0802 Four basic resources
  0803 nginx Cookbook requirements
  0804 Cookbook documentation and metadata are important
  0805 package resource
  0806 Actions have defaults
  0807 service resource
  0808 Add content to the website
  0809 Verifying nginx on your host
  0810 Wrapping up

09. Cookbook versioning
  0901 Why versioning?
  0902 Versioning the nginx cookbook and communicating change
  0903 Introduction to git
  0904 Sharing Source on GitHub
  0905 Cookbook Pipelines with Travis CI
  0906 Managing nginx.conf - breaking change
  0907 Zero downtime - enhancement
  0908 Wrapping Up

10. Automated validation with InSpec
  1001 Why automate validation?
  1002 Scanning a docker node with a hardening profile
  1003 Scanning a node with a hardening profile via ssh
  1004 Scanning a local machine with inspec
  1005 Formatting modes
  1006 control resource
  1007 Audit resources
  1008 Its form
  1009 Wrapping Up

11. Compliance profile authoring and use
  1101 Why translate compliance policy into code?
  1102 Your first compliance profile
  1103 Creating the initial structure and metadata
  1104 Make tests fail as you are writing them
  1105 Introducing match
  1106 Variable regular expressions
  1107 Adding ruby code to a control
  1108 Packaging ruby code in a custom matcher
  1109 Wrapping Up

12. Compliance profiles in cookbooks
  1201 Why use InSpec with Test Kitchen?
  1202 Remote InSpec profiles
  1203 Bringing node into compliance guided by tests
  1204 Wrapping Up

13. Capturing machine configurations with Hashicorp Packer
  1301 Automating config of the OS itself
  1302 Host versus Guest
  1303 Host Setup
  1304 Creating a Linux Desktop virtual machine
  1305 Installing Ubuntu 16.04 Desktop
  1306 Capturing the Linux Desktop VM with Packer
  1307 Verifying the Linux Desktop VM
  1308 Creating a macOS virtual machine
  1309 Installing macOS
  1310 Capturing the macOS VM with Packer
  1311 Verifying the macOS VM
  1312 Wrapping Up

14. Real-World Example: Manage your development environment with Chef
  1401 Why use Chef to Chef up your Chef?
  1402 Planning the cookbooks
  1403 Creating the chef_workstation wrapper cookbook
  1404 Berkshelf and dependency management
  1405 Introducing the depends statement and semantic versioning
  1406 Performing chef runs locally
  1407 Git cookbook
  1408 atom cookbook
  1409 chefdk cookbook
  1410 Final local chef run
  1411 Wrapping up

15. Troubleshooting Chef
  1501 Introducing chef-shell - attribute spelunking
  1502 Interactive debugging with chef-shell
  1503 Profiling
  1504 Wrapping up

16. Where to go next
