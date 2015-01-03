module ChefDashboard
  module Configuration
    class Settings
      def self.chef_api_url
        'http://127.0.0.1:9292/chef'
      end

      def self.chef_client_name
        'stickywicket'
      end

      def self.chef_client_key_path
        'fixtures/.chef/stickywicket.pem'
      end
    end
  end
end
