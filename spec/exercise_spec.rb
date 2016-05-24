require('minitest/autorun')
require_relative('../models/agent')

class TestAgent < Minitest::Test


  agent1 = Agent.new({ 'first_name' => 'Zak', 'last_name' => 'Buys', 'asset_name' => 'Mr. Pink', 'slack' => 'zak finger' })
  agent2 = Agent.new({ 'first_name' => 'Hamish', 'last_name' => 'McHaggis', 'asset_name' => 'Mr. Green','slack' =>'flash' })
  agent3 = Agent.new({ 'first_name' => 'Rick', 'last_name' => 'Henry', 'asset_name' => 'Mr. Brown','slack' =>'zinger' })
  agent4 = Agent.new({ 'first_name' => 'Keith', 'last_name' => 'McDougal', 'asset_name' => 'Mr. Purple','slack' =>'zinger' })
  agent5 = Agent.new({ 'first_name' => 'Zsolt', 'last_name' => 'Something', 'asset_name' => 'Mr. Taupe','slack' =>'zinger' })

  def setup
    options ={
      "first_name" => "Tony",
      "last_name" => "Goncalves",
      "asset_name" => "Pepperoni",
      "slack" => "padthai"
    }
    @agent6 = Agent.new( options )
  end


  def test_first_name
    assert_equal( 'Tony', @agent6.first_name())
  end

  def test_last_name
    assert_equal( 'Goncalves', @agent6.last_name())
  end

  def test_asset_name
    assert_equal( 'Pepperoni', @agent6.asset_name())
  end

  def test_pretty_name
    #assert_equal

  end

  def test_slack
    assert_equal( 'padthai', @agent6.slack)

  end


  # def test_quantity
  #   assert_equal( Fixnum, @pizza.quantity.class )
  #   assert_equal(10, @pizza.quantity)
  #
  # end
end
