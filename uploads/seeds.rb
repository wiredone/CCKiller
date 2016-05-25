require 'pry-byebug'
require_relative('../models/agent.rb')
require_relative('../models/exercise.rb')
require_relative('../models/agent_on_exercise.rb')
# ßrequire_relative('../models/oub.rb')
#require_relative('../models/rental.rb')

 Exercise.delete_all()
 Agent.delete_all()
 Agent_on_Exercise.delete_all()

assets = []

agent1 = Agent.new({ 'first_name' => 'Zak', 'last_name' => 'Bu', 'asset_name' => 'Mr. #ff69b4', 'slack' => 'drbuys' })
agent2 = Agent.new({ 'first_name' => 'Alistair', 'last_name' => 'MK', 'asset_name' => 'Mr. #0000ff','slack' =>'PowerlessCube' })
agent3 = Agent.new({ 'first_name' => 'Seumus', 'last_name' => 'Bl', 'asset_name' => 'Mr. #FAF0BE','slack' =>'seumus' })
agent4 = Agent.new({ 'first_name' => 'Harry', 'last_name' => 'Sw', 'asset_name' => 'Mr. #483c32','slack' =>'harryaswan' })
agent5 = Agent.new({ 'first_name' => 'Aidan', 'last_name' => 'Pi', 'asset_name' => 'Mr. #FFFFFF','slack' =>'aidanpinkman' })
agent6 = Agent.new({ 'first_name' => 'Steven', 'last_name' => 'Me', 'asset_name' => 'Mr. #FF7F00','slack' =>'steve_mj' })

exercise1 = Exercise.new({'name' => 'Circle of Death 1 - The Initiation. Test Running the Rules'})
e1 = exercise1.create
puts e1.id
a1 = agent1.save
# assetsi = [{'asset_id' => a1.id, 'asset_name'=> a1.asset_name}]
a2 = agent2.save
# assets.push(a2.id)
a3 = agent3.save
# assets.push(a3.id)
a4 = agent4.save
# assets.push(a4.id)
a5 = agent5.save
# assets.push(a5.id)
a6 = agent6.save

# assetsi << {'asset_id' => a2.id, 'asset_name'=> a2.asset_name}
# assetsi << {'asset_id' => a3.id, 'asset_name'=> a4.asset_name}
# assetsi << {'asset_id' => a4.id, 'asset_name'=> a4.asset_name}
# assetsi.shuffle!
# new_exercise=create_exercise(assets)
#
# assetsi.each do |asset|
#   puts "Asset Name: " + "#{asset["asset_name"]}" "  Asset ID:  " + "#{asset["asset_id"]}"
# end

# killer = [1,2,3,4,5,6]
#
# bringer = a3.asset_name
#
# target
#
# method set up exercise
# given a tick list
# pops them ont an Array
# shuffles then returns.
#
# on click, creates a new exercise object pass in all the agents.
#
# execise1 = exercise.new (id-s of agents_)
#
# method get target
# return agent target


# def mytarget(banjo)
#
# my_exercise_id=assetsi.(banjo)

# ("§target = new_exercise[my_exercise_id]
#
# end
#
# kill = mytarget(bringer)

# binding.pry
# nil

puts exercise1.id
 exercise_assets1 = Agent_on_Exercise.new({'asset' => a1.id, 'exercise' => e1.id}).save()
 exercise_assets2 = Agent_on_Exercise.new({'asset' => a2.id, 'exercise' => e1.id}).save()
 exercise_assets3 = Agent_on_Exercise.new({'asset' => a3.id, 'exercise' => e1.id}).save()
 exercise_assets4 = Agent_on_Exercise.new({'asset' => a4.id, 'exercise' => e1.id}).save()
 exercise_assets5 = Agent_on_Exercise.new({'asset' => a5.id, 'exercise' => e1.id}).save()
 exercise_assets6 = Agent_on_Exercise.new({'asset' => a6.id, 'exercise' => e1.id}).save()
