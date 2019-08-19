#
# Cookbook:: python
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
apt_update 'update_sources' do
  action :update
end

package "python" do
  action :install
end

package 'python-pip'  # package default will install

#### flask ####
execute 'install Flask==0.10.1' do
  command 'pip install flask==0.10.1'
end

### Jinja2 ######
execute 'install Jinja2==2.7.3' do
  command 'pip install jinja2==2.7.3'
end
