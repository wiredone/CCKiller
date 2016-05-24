require_relative('../models/exercise.rb')
require 'pry-byebug'

get '/exercises' do
   @exercises = Exercise.all()
  # @agents = Agent.all()
  erb :'exercises/index'
end

get '/exercises/new' do
  erb :'exercises/new'
end

# get '/exercises/:id' do
#   erb :'exercises/show'
# end
#
# get '/exercises/:id/edit' do
# end

post '/exercises' do

  @exercise = Exercise.new(params)
  @exercise.create

#    funk = params["selected_assets"].map {|i|   Agent.find_by_id(i.to_i) }

 # binding.pry
  # {|agent | exercise_assets<< Agent.find_by_id(agent)}


  #@exercise = Exercise.new(params)
#  @exercise.save

  redirect to('/exercises')

end

# post '/exercises/:id' do
# end
#
#
# delete '/exercises' do
# end
