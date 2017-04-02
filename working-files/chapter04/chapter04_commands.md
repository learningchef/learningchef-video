Chapter 04 Commands - Learning Chef for Linux and macOS
-------------------------------------------------------

0401 Why use Test Kitchen?
==========================
# Test Kitchen web site
http://kitchen.ci/

# CentOS web site
https://www.centos.org/

0402 Test Kitchen and Docker
============================
# Pluralsight Getting Started with Docker course
https://www.pluralsight.com/courses/docker-getting-started
# Pluralsight Docker Deep Dive course
https://www.pluralsight.com/courses/docker-deep-dive
# O'Reilly Learning Docker video
http://shop.oreilly.com/product/0636920050650.do
# O'Reilly Real World Docker video
http://shop.oreilly.com/product/0636920051343.do

# Docker Store (a.k.a. Docker Hub)
https://store.docker.com/
# Official Docker image for Ubuntu
https://store.docker.com/images/ubuntu
# Official Docker image for Debian
https://store.docker.com/images/debian
# Official Docker image for CentOS
https://store.docker.com/images/centos

0403 What if my machine can't run Docker?
=========================================
# Docker for Mac
https://docs.docker.com/docker-for-mac/install/

# DigitalOcean DO10 promo code
https://www.digitalocean.com/company/blog/give-your-friends-10-to-host-their-projects-and-get-25-yourself/
# AWS Free Tier
https://aws.amazon.com/free
# Google Cloud Platform Free Tier
https://cloud.google.com/free

# DigitalOcean
https://www.digitalocean.com/

0404 What if I want to target macOS?
====================================
# No commands

0405 Installing Docker on Linux
===============================
# Docker installation guide
https://docs.docker.com/engine/installation/linux/

# Install Docker
curl -fsSL https://get.docker.com | sh

# Start the Docker daemon and make sure it is set to start on boot
sudo systemctl start docker
sudo systemctl enable docker

# Run a test image in a container
sudo docker run hello-world

# Create a docker group and add my user
sudo groupadd docker
sudo usermod -aG docker $USER

# Run a test image in a container
docker run hello-world

0406 Installing Docker on macOS
===============================
# The Docker for Mac environment
https://docs.docker.com/docker-for-mac/docker-toolbox/#the-docker-for-mac-environment
# Install Docker for Mac
https://docs.docker.com/docker-for-mac/install/
# Get started with Docker for Mac
https://docs.docker.com/docker-for-mac/

# Get Docker for Mac - Stable
https://download.docker.com/mac/stable/Docker.dmg

# Verify Docker is installed correctly
docker run hello-world

0407 Docker and DigitalOcean
===========================
# DigitalOcean
https://www.digitalocean.com/

# Create ssh keypair
ssh-keygen

# Print out ssh public key
cat ~/.ssh/id_rsa.pub

# Install Chef Development Kit
ssh root@<ip_address>
curl -LO https://packages.chef.io/files/stable/chefdk/1.1.16/ubuntu/16.04/chefdk_1.1.16-1_amd64.deb
sudo dpkg -i chefdk_1.1.16-1_amd64.deb
echo 'eval "$(chef shell-init bash)"' >> ~/.bashrc
cat ~/.bashrc
source ~/.bashrc
exit
ssh root@<ip_address
which ruby

# Verify Docker install
docker --version
docker run hello-world

0408 Introducing Test Kitchen
=============================
# Verify Test Kitchen install
kitchen --version

# Verify ChefDK shell install
which ruby

# Create sandbox environment
mkdir kitchen
cd kitchen
kitchen init --driver=kitchen-dokken --provisioner=dokken
ls
ls -al
cat chefignore
# Content in chapter04/kitchen/.kitchen.yml
atom .kitchen.yml

# Verify your .kitchen.yml
kitchen list

# Create a sandbox instance
kitchen create --log_level=debug
kitchen list
docker ps

# Login to the sandbox instance and check OS type
kitchen login default-centos73
cat /etc/redhat-release
exit

# Destroy the sandbox instance
kitchen destroy default-centos73

0409 YAML Basics
================
# Online YAML Parser
http://yaml-online-parser.appspot.com/

# Simplest possible YAML file
---

# Sequences (lists) in YAML
--- # This is a comment
# I am a multi-line comment
# hear me roar
- Automate Linux desktops
- "Automate macOS desktop"
- 'Automate switch configuration'
- 25 storage arrays
- true
- false

# Single line sequences (lists) in YAML
--- # one-line shopping list
[ 'pen', 'apple', 'pineapple' ]

# Nested sequences (lists) in YAML
--- # two-by-two table
- - 'a1'
  - 'a2'
- - 'b1'
  - 'b2'

# Map (name-value pairs) in YAML
---
website1:
  url: http://example.com/file.tar
  port: 8080
  mode: 0644
  owner: alice
website2:
  url: http://ex2.com/file.tar
  port: 9080
  mode: 0644
  owner: bob

# Single line maps (name-value pairs) in YAML
---
website1:
  url: http://example.com/file.tar
  port: 8080
  mode: 0644
  owner: alice
website2:
  { url: "http://ex2.com/file.tar", port: 9080, mode: 0644, owner: bob }

0410 Validating YAML in Atom
============================
atom
# Install linter-js-yaml package

# Reveal hidden files in macOS Finder/Atom
Command + Shift + .

# Content in chapter04/kitchen/.kitchen.yml
atom

0411 Test Kitchen configuration file format overview
====================================================
# kitchen-dokken driver documentation
https://github.com/someara/kitchen-dokken

# Content in chapter04/kitchen/.kitchen.yml
atom

# Inspecting the sandbox contents
cd kitchen
ls -al
kitchen list
kitchen create --log_level=debug
docker ps
docker inspect <container_id>
kitchen list
kitchen login default-centos73
cd /opt
ls -al
cd chef
ls -al
exit

0412 Wrapping Up
================
# No commands
