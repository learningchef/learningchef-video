#
# Cookbook:: atom
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

case node['platform_family']
when 'debian'
  apt_repository 'atom-ppa' do
    uri 'http://ppa.launchpad.net/webupd8team/atom/ubuntu'
    distribution node['lsb']['codename']
    components ['main']
    keyserver 'keyserver.ubuntu.com'
    key 'EEA14886'
  end

  package 'atom'
when 'mac_os_x'
  zip_app_package 'atom' do
    source 'https://github.com/atom/atom/releases/download/v1.12.9/atom-mac.zip'
  end
end
