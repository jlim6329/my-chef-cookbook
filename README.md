my-chef-cookbook
================

The Chef Recipes here are targeted for Fedora 18

[chef bootstrap]

curl -L https://www.opscode.com/chef/install.sh | sudo bash

[running chef-solo]

sudo chef-solo -c solo.rb -j node.json
