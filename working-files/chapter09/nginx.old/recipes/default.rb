#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

breakpoint 'beginning' do
  action :break
end

package 'epel-release'

package 'nginx'

directory '/var/www/html' do
  recursive true
end

template "/var/www/html/index.html" do
  source 'index.html.erb'
  mode '0644'
end

template '/etc/nginx/nginx.conf' do
  notifies :restart, 'service[nginx]', :immediately
end

directory '/etc/nginx/sites-enabled' do
  recursive true
end

template '/etc/nginx/sites-enabled/default.conf'

service 'nginx' do
  action [ :enable, :start ]
end
