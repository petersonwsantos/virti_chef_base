#
# Cookbook Name:: virti_chef_base
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# Install Packages
include_recipe 'virti_chef_base::packages' if node['virti_chef_base']['packages']['install']

# configure o selinux
#include_recipe 'virti_chef_base::security' if node['virti_chef_base']['security']['selinux']['configure'] 
