require('pg')
require_relative('../db/sql_runner')

class Agent_on_Exercise

  attr_reader :id, :agent_id, :exercise_id, :asset_name

  def initialize( options )
    @id = options['id'].to_i
    @asset = options['asset'].to_i
    @exercise = options['exercise'].to_i
    @asset_name = options['asset_name']
  end

  def save()
    new_asset_name =gen_asset_name
    sql = "INSERT INTO agents_on_exercises(asset, asset_name, exercise) VALUES (#{@asset}, '#{new_asset_name}', #{@exercise}) RETURNING *"
 puts sql
   agent_on_exercise = SqlRunner.run_sql(sql).first

    return Agent_on_Exercise.new(agent_on_exercise)
  end

  # def game() # TODO:
  #   #returns an array of people in an exercise.
  #   sql = "select books.* from books inner join rentals on books.id = rentals.book_id where rentals.book_id = #{@book_id}"
  #   return Book.map_item(sql)
  # end
  #
  # def member()
  #   # sql = "select member.*
  #   # from members
  #   # inner join rentals
  #   # on members.id = rentals.member_id
  #   # where rentals.member_id = #{@member_id}"
  #
  #   sql = "select *
  #   from members
  #   where id =#{@member_id}"
  #
  #   return Member.map_item(sql)
  # end

  def self.delete_all()
    sql = "delete from Agents_on_Exercises"
    SqlRunner.run_sql(sql)
  end

  def self.all()
    sql = "SELECT * FROM Agents_on_Exercises"
    return Agent_on_Exercise.map_items(sql)
  end

  def self.map_items(sql)
    something = SqlRunner.run_sql(sql)
    result = something.map { |product| Agent_on_Exercise.new( product ) }
#    puts result.inspect
    return result
  end

  def self.map_item(sql)
    result = Agent_on_Exercise.map_items(sql)
  #  puts result
    return result.first
  end

  def asset()
    #this is an agent on an exercise
  #  sql = "select books.* from books inner join rentals on books.id = rentals.book_id where rentals.book_id = #{@book_id}"
    sql = "select agents.* from agents inner join agents_on_exercises on agents.id = agents_on_exercises.asset where agents_on_exercises.asset = #{@asset}"
 #puts sql
    return Agent.map_item(sql)
  end

  def exercise()
    #this is an agent on an exercise
  #  sql = "select books.* from books inner join rentals on books.id = rentals.book_id where rentals.book_id = #{@book_id}"
    sql = "select exercises.* from exercises inner join agents_on_exercises on exercises.id = agents_on_exercises.exercise where agents_on_exercises.exercise = #{@exercise}"
 #puts sql
    return Exercise.map_item(sql)
  end

  def self.delete_all()
    sql = "DELETE FROM agents_on_exercises"
    SqlRunner.run_sql(sql)
  end

  def gen_asset_name()
  return "Mr. " + "%06x" % (rand * 0xffffff)
  end
end
