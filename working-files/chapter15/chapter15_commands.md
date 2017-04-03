Chapter 15 Commands - Learning Chef for Linux and macOS
-------------------------------------------------------

1501 Troubleshooting Chef
=========================
# No commands

1502 Introducing chef-shell - Attribute Spelunking
==================================================
# Attribute Precedence
https://docs.chef.io/attributes.html

chef-shell
> 2+2
> node['ipaddress']
> node['memory']
> node['cpu']
> node.attributes
> require 'pry'
> pry
> node.attributes
> node.attributes.sort.each { |k,v| p k}; nil
> node.default['ipaddress'] = '1.1.1.1'
> node['ipaddress']
> node.debug_value('ipaddress')
> quit 

1502 Breakpoints in Chef
========================
atom .
kitchen list
kitchen converge debug
kitchen login debug
cd /opt
ls
cd kitchen
ls
ls cookbooks
/opt/chef/embedded/bin/gem install chef-zero
/opt/chef/embedded/bin/chef-zero -d
pwd
/opt/chef/embedded/bin/knife cookbook upload --all --config client.rb
/opt/chef/embedded/bin/chef-shell --client --config client.rb --override-runlist 'nginx'
> run_chef
> node['ipaddress']
> chef_run.step
> chef_run.rewind
> quit
exit
kitchen destroy

# Stepping Through Chef-client Runs With Shef
http://stevendanna.github.io/blog/2012/01/28/shef-debugging-tips-1/


1503 Profiling
==============
ls
cd atom
atom .
kitchen list
kitchen converge ubuntu
kitchen login ubuntu
cd /tmp/kitchen/cache
more graph_profile.out

cd capstone
cd chef_workstation
cp solo.sh solo_profile
chmod +x solo_profile.sh
atom solo_profile.sh
cd ~/profiling/
ls
cd atom
kitchen destroy

1504 Wrapping up
================
# No commands
