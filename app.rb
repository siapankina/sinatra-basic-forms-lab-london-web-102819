require_relative "config/environment"

class App < Sinatra::Base
  get "/" do
    erb :index
  end

  get "/new" do
    erb :create_puppy
  end

  post "/puppy" do
    @params = params
    erb :display_puppy
  end
end
