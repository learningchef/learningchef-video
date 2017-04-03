name 'chef_workstation'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'all_rights'
description 'Installs/Configures chef_workstation'
long_description 'Installs/Configures chef_workstation'
version '0.1.0'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/chef_workstation/issues' if respond_to?(:issues_url)

# The `source_url` points to the development reposiory for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/chef_workstation' if respond_to?(:source_url)

depends 'git', '~> 0.1' # '>= 0.1.0', '< 1.0'
depends 'atom', '~> 0.1'
depends 'chefdk', '~> 0.1'
