Chapter 09 Commands - Learning Chef for Linux and macOS
-------------------------------------------------------

0901 Why versioning?
====================
# No commands

0902 Versioning the nginx cookbook and communicating change
===========================================================
# Chef supermarket
https://supermarket.chef.io

cookstyle

0903 Introduction to git
========================
cd nginx
git --version
git config --global user.name "Mischa Taylor"
git config --global user.email mischa@misheska.com
cat ~/.gitconfig
git init
ls -al .git
ls
git
git status
git commit -m "Initial development"
ls
git log
git show <sha1>
git show HEAD

# Working tree, staging area and Git directory diagram
https://git-scm.com/book/en/v2/Getting-Started-Git-Basics
 
0904 Sharing Source on GitHub
=============================
https://github.com

git remote add origin https://github.com/<your_user>/<your_repo>
Example:
git remote add origin https://github.com/misheska-oreilly.com/nginx.git

git remote -v
git push -u origin master

# browse to gitub repo url

0905 Cookbook Pipelines with Travis CI
======================================
https://travis-ci.org

cd nginx
atom .travis.yml
git add .travis.yml
git status
git commit -m "Added a .travis.yml config file"
git status
git remote -v
git push
git status
git add .
git commit -m "Updated CHANGELOG.md"
git status
git push
# add badge
git status
git add .
git commit -m "Added build badge"
git status
git push

0906 Managing nginx.conf - breaking change
==========================================
cd nginx
kitchen list
kitchen destroy
kitchen converge
kitchen verify
chef generate template nginx.conf
docker ps
docker cp <container_id>:/etc/nginx/nginx.conf templates/nginx.conf.erb
kitchen converge
kitchen verify
chef generate template default.conf
docker ps
docker cp <container_id>:/etc/nginx/nginx.conf templates/default.conf.erb
kitchen converge
kitchen verify
git add .
git status
git commit -m "Manage configuration files"
git status
git push

0907 Zero downtime - enhancement
================================
cd nginx
# source in chapter09/nginx/loop.sh
atom loop.sh
chmod +x loop.sh

# in another window
cd nginx 
./loop.sh
# in original window
kitchen list
cd nginx
kitchen login
service nginx restart
service nginx restart

# Nginx without downtime
https://serverfault.com/questions/378581/nginx-config-reload-without-downtime
https://nginx.org/en/docs/beginners_guide.html

# in original window
service nginx reload
service nginx reload
# kill loop.sh window
exit

kitchen converge
kitchen test
git status
git add .
git commit -m "Added zero downtime support"
git push

0908 Wrapping Up
================
# No commands
