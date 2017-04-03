#
# Cookbook:: git
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

case node['platform_family']
when 'debian'
  include_recipe 'apt'
  package 'git'
when 'mac_os_x'
  include_recipe 'build-essential'
end
