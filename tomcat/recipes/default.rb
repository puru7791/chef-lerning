#
# Cookbook:: tomcat
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
include_recipe 'tomcat::install'
include_recipe 'tomcat::configure'
