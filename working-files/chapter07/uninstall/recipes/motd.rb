node.default['motd_attributes']['motd'] = [
  "Welcome to <%= node['motd_attributes']['company'] %>",
  "<%= node['motd_attributes']['message'] %>",
  "This node is running on <%= node['virtualization']['system'] %>",
  "The IP address of this node is <%= node['ipaddress'] %>",
  "JAVA_HOME on this node is <%= node['motd_attributes']['java_home'] %>",
  "Java binary on this node is <%= node['motd_attributes']['java_bin'] %>",
  "Tomcat binary is <%= node['motd_attributes']['tomcat_bin'] %>"
]
