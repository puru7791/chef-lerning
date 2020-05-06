#
# Cookbook:: .
# Recipe:: install
#
# Copyright:: 2020, The Authors, All Rights Reserved.
apt_update 'update' do
	action :update
end
package 'tomcat8' do
	action :install
	notifies :restart, 'service[tomcat8]'
end
service 'tomcat8' do
	action :nothing
end
other_packages = ['tomcat8-docs', 'tomcat8-admin', 'tomcat8-examples']
other_packages.each do |tomcat_packages|
	package tomcat_packages do
		action :install
		notifies :restart, 'service[tomcat8]'
	end
end
