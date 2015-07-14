require 'sinatra/base'
require 'sinatra/content_for'

class ExampleApp < Sinatra::Base
  helpers do
    include Sinatra::ContentFor
    include Sprockets::Helpers
  end

  get '/' do
    erb :index
  end
end
