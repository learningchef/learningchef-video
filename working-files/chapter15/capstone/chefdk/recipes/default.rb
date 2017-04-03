#
# Cookbook:: chefdk
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

case node['platform_family']
when 'debian'
  puts "MISCHA: #{Chef::Config[:file_cache_path]}"
  src = 'https://packages.chef.io/files/stable/chefdk/1.1.16/ubuntu/16.04/chefdk_1.1.16-1_amd64.deb'
  local_path = "#{Chef::Config[:file_cache_path]}/#{::File.basename(src)}"
  remote_file local_path do
    source src
  end

  dpkg_package local_path

  bashrc_file = '/etc/bash.bashrc'
  file bashrc_file do
    content lazy {
      txt = 'eval "$(chef shell-init bash)"'
      lines = ::File.read(bashrc_file).split("\n")
      lines << txt unless lines.include?(txt)
      lines.join("\n")
    }
  end
when 'mac_os_x'
  dmg_package 'ChefDK' do
    source 'https://packages.chef.io/files/stable/chefdk/1.1.16/mac_os_x/10.12/chefdk-1.1.16-1.dmg'
    type 'pkg'
    volumes_dir 'Chef Development Kit'
    package_id 'com.getchef.pkg.chefdk'
    app 'chefdk-1.1.16-1'
  end
end
