require_relative('../models/exercise.rb')


get '/exercise' do
  @assets = Exercise.all()
  @agents = Agent.all()
  erb :'exercise/index'
end

get '/exercises/new' do
  erb :'exercises/new'
end

get '/exercises/:id' do
  erb :'exercises/show'
end

get '/exercises/:id/edit' do
end

post '/exercises' do
  @exercise = exercise.new(params)
  @exercise.save
  redirect to('/exercises')
end

post '/exercises/:id' do
end


delete '/exercises' do
end
