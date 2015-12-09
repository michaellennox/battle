require 'sinatra/base'
require './lib/player'
require './lib/game'
class Battle < Sinatra::Base

  enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    $Player1 = Player.new(params[:name1])
    $Player2 = Player.new(params[:name2])
    $Game = Game.new($Player1, $Player2)
    redirect '/play'
  end

  get '/play' do
    @player1 = $Player1.name
    @player2 = $Player2.name
    @player1hp = $Player1.hp
    @player2hp = $Player2.hp
    #@player1attack = $Player1.attack
    #@player2attack = $Player2.attack

    erb :play
  end

  get '/attack' do
    @player1 = $Player1
    @player2 = $Player2
    $Game.attack(@player2)
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
