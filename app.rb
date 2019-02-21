require 'sinatra/base'

class Battle < Sinatra::Base
    enable :sessions

    get'/' do
      session[:player_2_hp] = 100
      erb :index
    end

post '/names' do
  session[:player_1_name] = params[:player_1_name]
  session[:player_2_name] = params[:player_2_name]
  redirect '/play'
end

get '/play' do
  @player_1_name = session[:player_1_name]
  @player_2_name = session[:player_2_name]
  @player_2_hp = session[:player_2_hp]
  erb :play
end

post '/attack' do
  session[:player_2_hp] -= 10
  redirect '/play'
end

run! if app_file == $0

end
