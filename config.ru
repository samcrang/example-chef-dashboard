#\ -s puma

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), 'lib'))

require 'configuration/settings'
require 'configuration/apps/foo_app'
require 'configuration/apps/bar_app'
require 'chef_dashboard'
require 'chef_zero/server'
require 'sinatra'

class DummyApp < Sinatra::Base
  get '/foo/version' do
    '6.283'
  end

  get '/bar/version' do
    '2.7182'
  end
end

run Rack::URLMap.new(
  '/chef' => ChefZero::Server.new.send('app'),
  '/dummy' => DummyApp.new,
  '/' => ChefDashboard::Web
)
