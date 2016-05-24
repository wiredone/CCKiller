require_relative('../models/agent.rb')


get '/agents' do
  @agents = Agent.all()
  erb :'agents/index'
end

get '/agents/new' do
  erb :'agents/new'
end

# get '/agents/:id' do
#   erb :'agents/show'
# end

# get '/agents/:id/edit' do
# end

post '/agents' do
  @agent = Agent.new(params)
  @agent.save
  redirect to('/agents')
end

# post '/agents/:id' do
# end
#
# delete '/agents' do
# end
