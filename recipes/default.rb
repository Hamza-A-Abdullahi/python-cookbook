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

#### gnureadline==6.3.3  accepting permission directory###
 package 'libncurses5-dev' do
   action :install
 end


# #### flask ####
execute 'install Flask==0.10.1' do
  command 'pip install flask==0.10.1'
end
#
# ### Jinja2 ######
execute 'install Jinja2==2.7.3' do
  command 'pip install jinja2==2.7.3'
end
#
# ### MarkupSafe #####
execute 'install MarkupSafe==0.23' do
  command 'pip install MarkupSafe==0.23'
end
#
### Werkzeug==0.9.6 ####
execute 'install Werkzeug==0.9.6' do
  command 'pip install Werkzeug==0.9.6'
end
#
#### gnureadline==6.3.3 ###
execute 'install gnureadline==6.3.3' do
  command 'pip install gnureadline==6.3.3'
end

# #### itsdangerous==0.24 ####
execute 'install itsdangerous==0.24' do
  command 'pip install itsdangerous==0.24'
end
#
# ### rauth==0.7.0 ###
execute 'install rauth==0.7.0' do
  command 'pip install rauth==0.7.0'
end

#### requests==2.3.0  #######
execute 'install requests==2.3.0' do
  command 'pip install requests==2.3.0'
end
#
# #### wsgiref==0.1.2 ######
execute 'install wsgiref==0.1.2' do
  command 'pip install wsgiref==0.1.2'
end

# #### gunicorn==18.0 #####
execute 'install gunicorn==18.0' do
  command 'pip install gunicorn==18.0'
end

# ### Flask-SSLify==0.1.4 #####
execute 'install Flask-SSLify==0.1.4' do
  command 'pip install flask-SSLify==0.1.4'
end

# ##### # Test harness pytest==2.5.2  #####
execute 'install pytest==2.5.2' do
  command 'pip install pytest==2.5.2'
end

# ##### Coverage pytest-cov==1.6 #######
execute 'install pytest-cov==1.6' do
  command 'pip install pytest-cov==1.6'
end

# ##### HTTP Fixtures betamax==0.4.0 #######
execute 'install betamax==0.4.0' do
  command 'pip install betamax==0.4.0'
end

# ####### LINT OR DIE ##########
execute 'install flake8==2.1.0' do
  command 'pip install flake8==2.1.0'
end

execute 'install pep8==1.5.6' do
  command 'pip install pep8==1.5.6'
end

execute 'install pyflakes==0.8.1' do
  command 'pip install pyflakes==0.8.1'
end

# ###### Coveralls #######
execute 'install pyflakes==0.8.1' do
  command 'pip install pyflakes==0.8.1'
end
