require('pg')
require_relative('../db/sql_runner')

class Agent

  attr_accessor :id, :first_name, :last_name, :asset_name, :slack
#TODO remove access to non-writeables

  def initialize(options)
    @id = options['id'].to_i
    @first_name = options['first_name']
    @last_name = options['last_name']
    @asset_name = options['asset_name']
    @slack = options['slack']
  end

  def pretty_name
    @pretty_name = @first_name +" " + @last_name
  end

  def save()
    sql = "INSERT INTO agents (first_name, last_name, asset_name, slack) VALUES ('#{@first_name}', '#{@last_name}', '#{@asset_name}','#{@slack}' ) RETURNING *"
    agent = SqlRunner.run_sql(sql).first
    result = Agent.new( agent )
    return result
  end

  def self.all()
    sql = "SELECT * FROM agents"
    return Agent.map_items(sql)
  end

  def self.delete_all()
    sql = "DELETE FROM agents"
    SqlRunner.run_sql(sql)
  end

  def self.delete(id)
 #delete one agent

  end


  def self.map_items(sql)
    agent = SqlRunner.run_sql(sql)
    result = agent.map { |batman| Agent.new( batman ) }
    return result
  end

  def self.map_item(sql)
    result = Agent.map_items(sql)
    return result.first
  end

  # def create_exercise(assets)
  #      assets.shuffle!
  #      for asset in assets do
  #        Exercise.new({'asset' => asset}).save()
  #   end
  # #   # #binding.pry
  # end
  #
  # def self.find_by_id(asset_id)
  #   sql = "select * from agents where id = #{asset_id}"
  #   agent = Agent.map_item(sql)
  #
  #   return agent
  # end
end
