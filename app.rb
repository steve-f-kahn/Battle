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
    player_1 = Player.new(name: params[:player_1_name], hp: 100)
    player_2 = Player.new(name: params[:player_2_name], hp: 100)
    Game.start_game(player_1,player_2)
    redirect '/play'
  end

  get '/play' do
    @player_1_name = Game.current_game.player_1.name
    @player_2_name = Game.current_game.player_2.name
    @player_2_hp = Game.current_game.player_2.hp
    erb :play
  end

  post '/player-1-attack' do
    Game.current_game.attack(Game.current_game.player_2, 10)
    Game.current_game.player_turn_change
    redirect '/play'
  end

  post '/player-2-attack' do
    Game.current_game.attack(Game.current_game.player_1, 10)
    Game.current_game.player_turn_change
    redirect '/play'
  end

run! if app_file == $0

end
