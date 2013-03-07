template '/home/vagrant/.gemrc' do
  source 'gemrc.erb'
  backup false
  owner 'vagrant'
  group 'vagrant'
  mode 0644
end

bash "install rails" do
  user "root"
  code <<-EOH
  gem install rails
  EOH
end
