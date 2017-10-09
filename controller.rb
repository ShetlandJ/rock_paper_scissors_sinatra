require 'sinatra'
require 'sinatra/contrib/all' if development?
require_relative './models/r_p_s.rb'

game = Game.new()

get '/:play1/:play2' do
  play1 = params['play1'].capitalize()
  play2 = params['play2'].capitalize()
  game.result(play1, play2)
  # erb ( :result )
end

# player_move = [:rock, :paper, :scissors]
#
# get '/move/:move' do
#   player_throw = params[:type]
#
#   opposite_player_throw = player_move[rand(3)]
#
#   return "You tied with the computer. Try again!" if player_throw == opposite_player_throw
#
#   case [player_throw, opposite_player_throw]
#     when [:scissors, :paper], [:rock, :scissors], [:paper, :rock]
#       "#{player_throw} beats #{opposite_player_throw}, well done!"
#     else
#       "#{opposite_player_throw} smashed #{player_throw}."
#   end
# end
#
