require 'sinatra'
require 'bundler'

require 'sprockets'
require 'sprockets-sass'
require 'sprockets-helpers'
require 'sass'

map '/assets' do
  env = Sprockets::Environment.new

  env.append_path 'assets/css'
  env.append_path 'assets/js'
  env.append_path 'assets/js/vendor'
  env.append_path 'assets/img'

  Sprockets::Helpers.configure do |config|
    config.environment    = env
    config.prefix         = '/assets'
    config.digest         = false
  end

  run env
end

require './app'
run FullCircle
