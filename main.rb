require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/agents_controller')
require_relative('controllers/exercise_controller')
require_relative('controllers/kills_controller')

get '/' do
  erb :home
end
