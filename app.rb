require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1_name]), Player.new(params[:player_2_name]))
    redirect '/play'
  end

  get '/play' do
    @game = $game
    @last_action = session[:last_action]
    erb :play
  end

  post '/attack2' do
    session[:last_action] = :attack
    @game = $game
    @game.attack2
    redirect '/game_over' if @game.hp2 <= 0
    @game.switch_turn
    redirect '/play'
  end

  post '/attack1' do
    session[:last_action] = :attack
    @game = $game
    @game.attack1
    redirect '/game_over' if @game.hp1 <= 0
    @game.switch_turn
    redirect '/play'
  end

  get '/game_over' do
    @game = $game
    @victor = @game.active_player
    erb :game_over
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
