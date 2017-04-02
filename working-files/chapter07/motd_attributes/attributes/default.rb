override['motd_attributes']['company'] = "O'Reilly"
default['motd_attributes']['company'] = "O'Reilly"
default['motd_attributes']['company'] = "No'Reilly"
default['ipaddress'] = '1.1.1.1'
default['motd_attributes']['java_bin'] = '/usr/local/bin/java'

default['motd_attributes']['tomcat_home'] = '/usr/local/tomcat6'
default['motd_attributes']['tomcat_bin'] = "#{node['motd_attributes']['tomcat_home']}/bin/tomcat"
# /usr/local/tomcat6/bin/tomcat

default['motd_attributes']['message'] = "It's a wonderful day today!"

default['motd_attributes']['motd'] = []
