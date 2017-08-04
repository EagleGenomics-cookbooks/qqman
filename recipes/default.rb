#
# Cookbook:: qqman
# Recipe:: default
#
# Copyright (c) 2017 Eagle Genomics Ltd, Apache License, Version 2.0.
##########################################################

include_recipe 'r'

execute 'Rscript install qqman' do
  command 'Rscript -e "install.packages(\"qqman\")"'
  not_if { ::File.exist?('/usr/local/lib/R/site-library/qqman') }
end

