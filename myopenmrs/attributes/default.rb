if platform?('ubuntu')
    default['myopenmrs']['package_name'] = 'tomcat8'
    default['myopenmrs']['setup_packages'] = %w(git openjdk-8-jdk maven) 
elsif platform?('centos')
    default['myopenmrs']['package_name'] = 'tomcat'
    default['myopenmrs']['setup_packages'] = %w(git java8 maven)
end
# attribute objects
default['myopenmrs']['file_path'] = '/var/lib/tomcat8/webapps/openmrs.war'
default['myopenmrs']['from_file'] = 'https://excellmedia.dl.sourceforge.net/project/openmrs/releases/OpenMRS_Platform_2.3.0/openmrs.war'

