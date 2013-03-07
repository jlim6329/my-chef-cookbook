my-chef-cookbook
================

[chef bootstrap]

curl -L https://www.opscode.com/chef/install.sh | sudo bash

[running chef-solo]

sudo chef-solo -c solo.rb -j node.json
