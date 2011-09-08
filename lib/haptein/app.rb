require 'sinatra/async'
require 'haml'

module Haptein
  class App < Sinatra::Base
    register Sinatra::Async
    set :root, Haptein.root

    aget '/' do
      body haml(:index)
    end
  end
end
