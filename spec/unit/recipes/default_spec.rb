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

end  ## CLOSING (describe 'python::default')
