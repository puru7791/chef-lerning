#
# Cookbook:: .
# Recipe:: configure
#
# Copyright:: 2020, The Authors, All Rights Reserved.
template '/home/puru/platform.txt' do
	source 'platform.txt.erb'
	action :create
end
template '/etc/tomcat8/tomcat-users.xml' do
	source 'tomcat-users.xml.erb'
	action :create
end
