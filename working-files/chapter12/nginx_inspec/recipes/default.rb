#
# Cookbook Name:: nginx_inspec
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package 'epel-release'

package 'nginx'

template "/etc/nginx/conf.d/nginx.conf" do
 source 'nginx.conf.erb'
 notifies :restart, 'service[nginx]', :immediately
end

file '/etc/nginx/nginx.conf' do
  mode '0600'
end

service 'nginx' do
  action [ :enable, :start ]
end

template "/usr/share/nginx/html/index.html" do
  source 'index.html.erb'
  mode '0644'
end

file '/etc/nginx/conf.d/default.conf' do
  action :delete
end

file '/etc/nginx/sites-enabled' do
  action :delete
end

template "/etc/nginx/conf.d/90.hardening.conf" do
  source 'extras.conf.erb'
  notifies :restart, 'service[nginx]', :immediately
end
