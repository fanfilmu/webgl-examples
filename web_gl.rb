require "sinatra/base"

class WebGl < Sinatra::Base
  get "/" do
    haml :home
  end
end
