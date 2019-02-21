require 'sinatra/base'
require './models/player.rb'
require './models/game.rb'

class Battle < Sinatra::Base
  enable :sessions

  get'/' do
    session[:player_2_hp] = 100
    erb :index
  end

  post '/names' do
    $game = Game.new
    $player_1 = Player.new(name: params[:player_1_name], hp: 100)
    $player_2 = Player.new(name: params[:player_2_name], hp: 100)
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_2_hp = $player_2.hp
    erb :play
  end

  post '/attack' do
    $player_2.hp = $game.attack($player_2, 10)
    redirect '/play'
  end

run! if app_file == $0

end
