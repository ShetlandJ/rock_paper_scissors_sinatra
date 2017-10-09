require 'sinatra'
require 'sinatra/contrib/all' if development?
require_relative './models/game.rb'

game = Game.new()

get '/:play1/:play2' do
  play1 = params['play1'].capitalize()
  play2 = params['play2'].capitalize()
  @result = game.result(play1, play2)
  erb ( :result )
end
