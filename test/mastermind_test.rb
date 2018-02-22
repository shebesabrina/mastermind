require './test/test_helper'
require './mastermind'


class MastermindTest < Minitest::Test

  def setup
    @mastermind = Mastermind.new
  end

  def test_it_exists
    assert_instance_of Mastermind, @mastermind
  end


end
