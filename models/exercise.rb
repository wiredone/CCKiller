require('pg')
require_relative('../db/sql_runner')
# require_relative('agent')

class Exercise

  attr_accessor :id, :name, :status
#TODO remove access to non-writeables

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @open = options['status'] #should bool#
    @running = options['running']

#    @type = options['type']
  end


  def create()
    sql = "INSERT INTO exercises (name) VALUES ('#{@name} ') RETURNING *"
    exercise = SqlRunner.run_sql(sql).first
    return  Exercise.new( exercise)
    end

  def self.all()
  sql = "select * from exercises"
  return Exercise.map_items(sql)
  end

  def self.map_items(sql)
    agent = SqlRunner.run_sql(sql)
    result = agent.map { |batman| Exercise.new( batman ) }
    return result
  end

  def self.map_item(sql)
    result = Exercise.map_items(sql)
    return result.first
  end

  def self.delete_all()
    sql = "DELETE FROM exercises"
    SqlRunner.run_sql(sql)
  end

end
