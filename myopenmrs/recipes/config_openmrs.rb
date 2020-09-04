#
# Cookbook:: .
# Recipe:: config_openmrs
#
# Copyright:: 2020, The Authors, All Rights Reserved.
# This cookbook demonstrates the openmrs application 
# https://docs.chef.io/resources/apt_update/
apt_update 'update' do
    ignore_failure true
    action :update
    only_if { platform?('ubuntu') }
end

## installing the necessary packages for openmrs application
# find here for package resorce here https://docs.chef.io/resources/package/
setup_packages = node['myopenmrs']['setup_packages']
package setup_packages do
    action :install
end

# installing the Tomcat server for openmrs application
tomcat_package = node['myopenmrs']['package_name']
package tomcat_package do
    action :install
    notifies :enable, "service[#{tomcat_package}]"
end

# service resource https://docs.chef.io/resources/service/
service tomcat_package do
    action :nothing
end
# deploying file to tomcat server
file_path = node['myopenmrs']['file_path']
from_file = node['myopenmrs']['from_file']
# wget the file from http using remote_file resorce
remote_file file_path do
    source from_file
    action :create
    notifies :restart, "service[#{tomcat_package}]"
end

