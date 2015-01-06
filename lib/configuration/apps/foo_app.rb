require 'faraday'

module ChefDashboard
  module Configuration
    module Apps
      class FooApp
        def identifier
          :foo_app
        end

        def recipe
          'recipe\\[foo_app\\]'
        end

        def expected_version(node)
          '3.141'
        end

        def actual_version(node)
          Faraday.get('http://127.0.0.1:9292/dummy/foo/version').body
        end
      end
    end
  end
end
