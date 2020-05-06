if node['platform_family'] == 'debian'
    default['lamp']['package_name'] = 'apache2'
    default['lamp']['php_packages'] = ['php', 'libapache2-mod-php', 'php-mysql', 'php-cli']
elsif node['platform_family'] == 'rhel'
    default['lamp']['package_name'] = 'httpd'
    default['lamp']['php_packages'] = ['php', 'php-mysql', 'php-fpm']
end

