require './test/test_helper'
require './lib/game'
require './lib/guess'
require './lib/round'
require 'pry'

class RoundTest < Minitest::Test
  def setup
    @round = Round.new(@guess)
  end

  def test_it_exits
    assert_instance_of Round, @round
  end
  def

  def test_it_can_count_
    
  end

  end
