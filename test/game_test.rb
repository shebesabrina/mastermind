require './test/test_helper'
require './lib/game'


class GameTest < Minitest::Test

  def setup
    @game = Game.new(["r", "r", "g", "b"])
  end

  def test_it_exists
    assert_instance_of Game, @game
  end

  def test_it_can_generate_random_colors
    assert_equal ["r", "r", "g", "b"], @game.colors
  end

  def test_it_can_provide_the_cheat_code
    assert_equal ["r", "r", "g", "b"], @game.cheat
  end

  def test_it_can_provide_the_instructions
    result = %Q(OBJECT OF THE GAME\n\n The object of MASTERMIND (r) is to guess
    a secret code consisting of a series of 4 colored pegs. Each guest results
     in feedback narrowing down the possibilities of the code. The winner is the
      player who solves his opponent's secret code with fewer guesses.)
    assert_equal result, @game.instructions
  end

end
