require 'sinatra/base'

class Battle < Sinatra::Base
    get'/' do
      erb :index
    end

post '/names' do
  @player_1_name = params[:player_1_name]
  @player_2_name = params[:player_2_name]
  "Player 1: #{@player_1_name} Player 2: #{@player_2_name} "
end


run! if app_file == $0

end
