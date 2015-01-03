chef_repo = File.join(File.dirname(__FILE__), "..")

chef_server_url "http://127.0.0.1:9292/chef"
node_name       "stickywicket"
client_key      File.join(File.dirname(__FILE__), "stickywicket.pem")
cookbook_path   "#{chef_repo}/cookbooks"
cache_type      "BasicFile"
