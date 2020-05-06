apt_update 'update' do
    action :update
end
apt_package 'git' do
    action :install
end
apt_package 'tree' do
    action :install
end
apt_package 'elinks' do
    action :install
end


