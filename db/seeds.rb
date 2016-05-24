require 'pry-byebug'
require_relative('../models/agent.rb')
require_relative('../models/exercise.rb')
require_relative('../models/agent_on_exercise.rb')
# ßrequire_relative('../models/oub.rb')
#require_relative('../models/rental.rb')

# Exercise.delete_all()
# Agents_on_Exercise.delete_all()
# Agent.delete_all()

assets = []

agent1 = Agent.new({ 'first_name' => 'Zak', 'last_name' => 'Buys', 'asset_name' => 'Mr. Pink', 'slack' => 'zak finger' })
agent2 = Agent.new({ 'first_name' => 'Hamish', 'last_name' => 'McHaggis', 'asset_name' => 'Mr. Green','slack' =>'flash' })
agent3 = Agent.new({ 'first_name' => 'Rick', 'last_name' => 'Henry', 'asset_name' => 'Mr. Brown','slack' =>'zinger' })
agent4 = Agent.new({ 'first_name' => 'Keith', 'last_name' => 'McDougal', 'asset_name' => 'Mr. Purple','slack' =>'zinger' })
agent5 = Agent.new({ 'first_name' => 'Zsolt', 'last_name' => 'Something', 'asset_name' => 'Mr. Taupe','slack' =>'zinger' })

exercise1 = Exercise.new({'name' => 'Circle of Death'})
e1 = exercise1.create
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
# rental2 = Rental.new({'book_id' => b2.id, 'member_id' => m1.id}).save()
