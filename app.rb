require 'sinatra/base'

class Battle < Sinatra::Base

  get '/' do
    'Hello World!'
  end

  run! if app_file == $0


  get '/battle' do
    erb(:index)
  end

  post '/names' do
    @name = params[:name]
    erb(:play)
  end

end
