require './test/test_helper'
require './lib/game'


class GameTest < Minitest::Test

  def setup
    @game = Game.new("rrgb")
    @player_input1 = Game.new("rrg")
  end

  def test_it_exists
    assert_instance_of Game, @game
  end

  def test_it_can_generate_random_colors
    assert_equal "rrgb", @game.color_sequence
  end

  def test_it_can_provide_the_cheat_code
    assert_equal "rrgb", @game.cheat
  end

  def test_it_can_provide_the_instructions
    result = %Q(OBJECT OF THE GAME\n\n The object of MASTERMIND (r) is to guess
    a secret code consisting of a series of 4 colored pegs. Each guest results
    in feedback narrowing down the possibilities of the code. The winner is the
    player who solves his opponent's secret code with fewer guesses.)
    assert_equal result, @game.instructions
  end

  def test_guesses_count
    assert_equal 1, @game.add_guess
  end


end
