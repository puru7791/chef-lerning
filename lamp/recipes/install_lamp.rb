#
# Cookbook:: .
# Recipe:: install_lamp
#
# Copyright:: 2020, The Authors, All Rights Reserved.
package_name = node['lamp']['package_name']
apt_update 'updating' do
    ignore_failure true
    action :update
    only_if { node['platform']=='ubuntu' }
end
# using the attribute defind in the attribute/default.rb file
package node['lamp']['package_name'] do
    action :install
    notifies :enable, 'service[apache]'
end

# enabiling packages
service 'apache' do
    service_name node['lamp']['package_name']
    action :nothing
end
packages = node['lamp']['php_packages']
packages.each do |package_now|
    package package_now do
        action :install
        notifies :restart, 'service[apache]'
    end
end
cookbook_file '/var/www/html/info.php' do
	source 'info.php'
	action :create
	notifies :restart, 'service[apache]'
end
    
