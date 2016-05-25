require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/agents_c')
require_relative('controllers/exercises_c')
require_relative('controllers/agent_on_exercise_c')
require_relative('controllers/uploader')
#require_relative('controllers/kills_controller')

get '/' do
  erb :home
end
