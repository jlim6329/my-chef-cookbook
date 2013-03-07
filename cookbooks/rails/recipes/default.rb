template '/home/vagrant/.gemrc' do
  source 'gemrc.erb'
  backup false
  owner 'vagrant'
  group 'vagrant'
  mode 0644
end

