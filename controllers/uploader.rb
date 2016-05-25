require 'rubygems'
require 'sinatra'
require 'haml'
require_relative('../models/agent.rb')

# Handle GET-request (Show the upload form)
get "/agents/upload" do
  haml :'agents/upload'
end

# Handle POST-request (Receive and save the uploaded file)
# post "/upload" do
#   File.open('uploads/' + params['myfile'][:filename], "w") do |f|
#     f.write(params['myfile'][:tempfile].read)
#  end
# end

post "/import" do
  File.open('uploads/' + params['myfile'][:filename], "w") do |f|
    f.write(params['myfile'][:tempfile].read)
 end
  # File.open('uploads/' + params['myfile'][:filename], "w")
    CSV.foreach ('uploads/' + params['myfile'][:filename]) do |row|
    #puts row.inspect
    first_name=row[1]
    last_name=row[2]
    slack=row[3]
    agent=Agent.new({ 'first_name' => "#{first_name}", 'last_name'=>'last_name', 'slack'=>'slack'})
 #   agent1=Agent.new({ 'first_name' => 'Zak', 'last_name' => 'Bu', 'asset_name' => 'Mr. #ff69b4', 'slack' => 'drbuys' })

    agent.save
  end
  return "The file was successfully imported!"
end
