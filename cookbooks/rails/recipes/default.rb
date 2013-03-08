package "gcc"

package "gcc-c++"

package "sqlite-devel"

package "ruby-devel"

package "wget"

package "httpd"

bash "install node.js from source" do
  not_if("which node")
  user "root"
  code <<-EOF
  wget http://nodejs.org/dist/v0.8.22/node-v0.8.22.tar.gz
  tar zxvf node-v0.8.22.tar.gz
  cd node-v0.8.22
  ./configure
  make
  make install
  EOF
end

template '/home/vagrant/.gemrc' do
  source 'gemrc.erb'
  backup false
  owner 'vagrant'
  group 'vagrant'
  mode 0644
end

bash "install rails" do
  not_if("which rails")
  user "root"
  code <<-EOF
  gem install rails
  EOF
end

service "firewalld" do
  supports :status => true, :restart => true, :reload => true
  action [ :disable, :stop ]
end
