default['motd_attributes']['company'] = "O'Reilly"
default['ipaddress'] = '1.1.1.1'
default['motd_attributes']['java_bin'] = '/usr/local/bin/java'
default['motd_attributes']['tomcat_home'] = '/opt/tomcat6'
default['motd_attributes']['tomcat_bin'] = "#{node['motd_attributes']['tomcat_home']}/bin/tomcat"
override['motd_attributes']['company'] = 'Override company'
default['motd_attributes']['company'] = 'Default company'

default['motd_attributes']['motd'] = ['']
