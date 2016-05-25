require_relative('../models/agent.rb')
require 'haml'

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

# get '/import' do
# #haml :'agents/upload'
#   #File.open('uploads/' + params['myfile'][:filename], "w")
# #  return "The file was successfully uploaded!"
#       CSV.foreach ('myfile') do |row|
#       #puts row.inspect
#       first_name=row[1]
#       last_name=row[2]
#       slack=row[3]
#    #   puts first_name
#      #  @agent = Agent.new(@first_name,@last_name,@slack)
#      #  @agent.save
#      agent=Agent.new({ 'first_name' => "#{first_name}", 'last_name'=>'last_name', 'slack'=>'slack'})
#   #   agent1=Agent.new({ 'first_name' => 'Zak', 'last_name' => 'Bu', 'asset_name' => 'Mr. #ff69b4', 'slack' => 'drbuys' })
#
#      agent.save
#    end
# end
# post '/agents/:id' do
# end
#
# delete '/agents' do
# end
