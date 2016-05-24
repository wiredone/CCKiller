require_relative('../models/agent_on_exercise.rb')


get '/agents_on_exercises' do
  @agents = Agent.all()
  @exercises = Exercise.all()
  @agents_on_exercises = Agent_on_Exercise.all()
  erb (:'agents_on_exercises/index')
end

#new
get '/agents_on_exercises/new' do
  @agents = Agent.all()
  @exercises = Exercise.all()
  erb (:'/agents_on_exercises/new')
end

#create
post '/agents_on_exercises' do

  agent_on_exercise = Agent_on_Exercise.new(params)
  agent_on_exercise.save
  redirect to ("agents_on_exercises")
end
