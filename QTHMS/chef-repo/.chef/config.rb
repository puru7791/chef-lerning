# See http://docs.chef.io/config_rb.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "puru7791"
client_key               "#{current_dir}/puru7791.pem"
chef_server_url          "https://api.chef.io/organizations/puru_chef"
cookbook_path            ["#{current_dir}/../cookbooks"]
