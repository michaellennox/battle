require 'sinatra/base'
require './lib/player'
require './lib/game'
class Battle < Sinatra::Base

  enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    Player1 = Player.new(params[:name1])
    Player2 = Player.new(params[:name2])
    $game = Game.new(Player1, Player2)
    redirect '/play'
  end

  get '/play' do
      @game = $game

    # @player1 = $Game.player_name($Player1)
    # @player2 = $Game.player_name($Player2)
    # @player1hp = $Game.player_health($Player1)
    # @player2hp = $Game.player_health($Player2)
    #@player1attack = $Player1.attack
    #@player2attack = $Player2.attack

    erb :play
  end

  get '/attack' do
    @game = $game
    @game.switch
    @game.attack(@game.current)
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
