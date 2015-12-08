require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_2_hp = $player_2.hp
    @last_action = session[:last_action]
    erb :play
  end

  post '/attack' do
    session[:last_action] = :attack
    $player_2.attacked
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
