require 'faraday'

module ChefDashboard
  module Configuration
    module Apps
      class BarApp
        def identifier
          :bar_app
        end

        def recipe
          'recipe\\[bar_app\\]'
        end

        def expected_version
          '2.7182'
        end

        def actual_version
          Faraday.get('http://127.0.0.1:9292/dummy/bar/version').body
        end
      end
    end
  end
end
