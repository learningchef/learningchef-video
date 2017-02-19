Chapter 04 Commands - Learning Chef for Linux and macOS
-------------------------------------------------------

0401 Why use Test Kitchen?
==========================
# Test Kitchen web site
http://kitchen.ci/

0402 Test Kitchen and Docker
============================

0403 What if my machine can't run Docker?
=========================================

0404 What if I want to target macOS?
====================================

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

0407 Docker on DigitalOcean
===========================

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
kitchen destroy
