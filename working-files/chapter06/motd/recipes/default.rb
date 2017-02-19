#
# Cookbook:: motd
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

cookbook_file '/etc/motd' do
  source 'motd'
  mode '0644'
end

cookbook_file '/etc/profile.d/motd.sh' do
  source 'motd.sh'
  mode '0755'
end
