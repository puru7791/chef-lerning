#
# Cookbook:: .
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
# If the platform belongs to ubuntu or centos it includes recipe otherwise it ignores
if platform?('ubuntu') || platform?('centos')
    include_recipe 'myopenmrs::config_openmrs'
else
    Chef::Application.fatal!('This cookbook supports redhat and ubuntu platforms')
end
