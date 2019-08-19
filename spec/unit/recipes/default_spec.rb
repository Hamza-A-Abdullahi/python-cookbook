#
# Cookbook:: python
# Spec:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'python::default' do
  context 'When all attributes are default, on Ubuntu 18.04' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'ubuntu', '18.04'

  end
    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

  ####### updating all sources in ubuntu ##########
 it 'should run apt-get update ' do
   expect(chef_run).to update_apt_update 'update_sources'
 end

 it 'should install python package' do
   expect(chef_run).to install_package 'python'
 end

 it 'should install Python package management pip' do
   expect(chef_run).to install_package 'python-pip'
end

it 'should install flask plugin using pip management'do
  expect(chef_run).to run_execute ('install Flask==0.10.1')
end

it 'should install jinja2 plugin using pip management'do
  expect(chef_run).to run_execute ('install Jinja2==2.7.3')
end

it 'should install MarkupSafe plugin using pip management'do
  expect(chef_run).to run_execute ('install MarkupSafe==0.23')
end

it 'should install Werkzeug plugin using pip management' do
  expect(chef_run).to run_execute ('install Werkzeug==0.9.6')
end

it 'should install gnureadline plugin using pip management' do
  expect(chef_run).to run_execute ('install gnureadline==6.3.3')
end

it 'should install itsdangerous plugin using pip management' do
  expect(chef_run).to run_execute ('install itsdangerous==0.24')
end

it 'should install rauth plugin using pip management' do
  expect(chef_run).to run_execute ('install rauth==0.7.0')
end

it 'should install requests plugin using pip management' do
  expect(chef_run).to run_execute ('install requests==2.3.0')
end

it 'should install wsgiref plugin using pip management' do
  expect(chef_run).to run_execute ('install wsgiref==0.1.2')
end


it 'should install gunicorn plugin using pip management' do
  expect(chef_run).to run_execute ('install gunicorn==18.0')
end
end  ## CLOSING (describe 'python::default')
