require('pg')
require_relative('../db/sql_runner')
require_relative('agent')
# do we require_relative

class Exercise
# this is a class only for circle of death matches


  attr_accessor :id, :asset

  def initialize(options)
    @id = options['id'].to_i
    @asset = options['asset']

  end

  def save()
    #this bit is wrong.  it needs to save all the assets
    sql = "INSERT INTO exercise(asset) VALUES ('#{@asset}') RETURNING *"
    asset = SqlRunner.run_sql(sql).first
    result = Exercise.new( asset )
    return result
  end


  def self.delete(id)
 #delete one agent from current match, incase of suicide by dropout, or loss of bullets.
  end


  def self.all()
    sql = "SELECT * FROM exercise"
    return Exercise.map_items(sql)
  end

  def self.delete_all()
    sql = "DELETE FROM exercise"
    SqlRunner.run_sql(sql)
  end


  def self.map_items(sql)
    asset = SqlRunner.run_sql(sql)
    result = asset.map { |batman| Exercise.new( batman ) }
    return result
  end

  def self.map_item(sql)
    result = Exercise.map_items(sql)
    return result.first
  end



 def target(me)
  #  assets = Exercise.all
  #
  #  my_target =
  #  return my_target
 end
end

def create_exercise(assets)
    assets.shuffle!
    for asset in assets do
      Exercise.new({'asset' => asset}).save()
  #binding.pry
    end
end
