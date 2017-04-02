Chapter 02 Commands - Learning Chef for Linux and macOS
-------------------------------------------------------

0301 Why model your infrastructure as code?
===========================================
# No commands

0302 - Hello World
==================
# Create hello.rb
cd ~
mkdir hello
cd hello
# Content in /Working_Files/Chapter03/hello/hello.rb
atom hello.rb

# Run hello.rb
ls
chef-apply hello.rb

# Verify hello.txt was created
ls
more hello.txt

0303 Examining hello.rb
=======================
# No commands

0304 Linting code with Cookstyle
================================
# Run cookstyle on hello.rb
cd hello
ls
cookstyle hello.rb

# Run atom and create various errors to show in cookstyle

0305 Running Cookstyle within Atom
==================================
# Install base linter package in Atom
apm install linter

# Configure RuboCop in Atom
atom
# Install linter-rubocop package
# Change default RuboCop command settings to:
/opt/chefk/bin/cookstyle

# Load hello.rb in Atom
cd hello
ls
atom hello.rb

0306 Automated Verification with InSpec
=======================================
# Create hello_test.rb
cd hello
ls
# Content in /Working_Files/Chapter03/hello/hello_test.rb
atom hello_test.rb

# Automatically verify results of hello.rb chef-apply
inspec exec hello_test.rb

# Manually verify results of hello.rb chef-apply
ls hello.txt
more hello.txt

# Create an error for InSpec to catch
rm hello.txt
inspec exec hello_test.rb

# InSpec Resources Reference
http://inspec.io/docs/reference/resources/

# Fix the error
chef-apply hello.rb
inspec exec hello_test.rb

0307 Resilient infrastructure with Chef
=======================================
# Create stone.rb
cd hello
ls
# Content in /Working_Files/Chapter03/hello/stone.rb
atom stone.rb

# Display content of $HOME environment variable
echo $HOME

# Run Chef code in stone.rb
chef-apply stone.rb

# Manually verify chef-apply run of stone.rb
more $HOME/stone.txt
ls $HOME

# Run Chef code in stone.rb a second time
chef-apply stone.rb

# Modify stone.txt - create configuration drift
echo "Modifying this file written in stone" > $HOME/stone.txt
more $HOME/stone.txt
chef-apply stone.rb

# Manually verify chef-apply run of stone.rb
more $HOME/stone.txt

0308 Handling Uninstalls
========================
# Clear out stone.rb to see if removing code performs automatic uninstall
cd hello
ls
atom stone.rb
# Clear out the contents
chef-apply stone.rb
more ~/stone.txt
ls ~/stone.txt

# Chef file resource documentation
https://docs.chef.io/resource_file.html

# Create cleanup.rb
cd hello
ls
# Content in /Working_Files/Chapter03/hello/cleanup.rb
atom cleanup.rb

# Run cleanup.rb and verify that it removed stone.txt
chef-apply cleanup.rb
more ~/stone.txt
ls ~
ls ~/stone.txt

# Mark Burgess web site links
http://markburgess.org/bio.html
http://markburgess.org/papers/totalfield.pdf

# Attribute-driven uninstall links from Facebook
https://code.facebook.com/posts/1909042435988955/facebook-chef-cookbooks/
https://github.com/facebook/chef-cookbooks/
# Scaling systems configuration at Facebook - Phil Dibowitz
https://www.youtube.com/watch?v=SYZ2GzYAw_Q

0309 Wrapping Up
================
# No commands
