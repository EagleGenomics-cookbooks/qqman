#
# Cookbook:: qqman
# Recipe:: default
#
# Copyright (c) 2017 Eagle Genomics Ltd, Apache License, Version 2.0.
##########################################################

include_recipe 'r'

r_package 'qqman'

magic_shell_environment 'QQMAN_VERSION' do
  value node['qqman']['version']
end
