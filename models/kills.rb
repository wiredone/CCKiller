require('pg')
require_relative('../db/sql_runner')
#requires both

class Kill

  attr_reader :id, :exercise_id, :agent_id, :victim_id, :datetime_of_kill

  def initialize(options)
    @id = options['id'].to_i
    @assasin = options['assasin']
    @victim = options['victim']
  end

  def save()
    sql = "INSERT INTO kills (exercise_id, agent_id, victim_id) VALUES ('#{@exercise_id}', '#{@agent_id}', '#{@victim_id}' ) RETURNING *"
    kill = SqlRunner.run_sql(sql).first
    result = Kill.new( kill )
    return result
  end

  def self.all()
    sql = "SELECT * FROM kills"
    return Kill.map_items(sql)
  end

  def self.delete_all()
    sql = "DELETE FROM kills"
    SqlRunner.run_sql(sql)
  end


  def self.map_items(sql)
    kills = SqlRunner.run_sql(sql)
    result = kills.map { |batman| Kill.new( batman ) }
    return result
  end

  def self.map_item(sql)
    result = Kill.map_items(sql)
    return result.first
  end

end
