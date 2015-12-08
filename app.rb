require 'sinatra/base'

class Battle < Sinatra::Base
  #attr_reader :params

  get '/' do
    erb :index
  end

  post '/names' do
    @player1 = params[:name]
    @player2 = params[:name2]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
