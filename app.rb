require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    $Player1 = Player.new(params[:name1])
    $Player2 = Player.new(params[:name2])
    redirect '/play'
  end

  get '/play' do
    @player1 = $Player1.name
    @player2 = $Player2.name
    @player1hp = 60
    @player2hp = 60
    erb :play
  end

  get '/attack' do
    @player1 = $Player1.name
    @player2 = $Player2.name
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
