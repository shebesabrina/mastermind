require './test/test_helper'
require './lib/game'
require './lib/guess'
require 'pry'

class GuessesTest < Minitest::Test
  def setup
    @game = Game.new(["r", "r", "g", "b"])

    @guess_1 = Guess.new(["r", "r", "g", "b"], @game)
    @guess_2 = Guess.new(["b", "g", "r", "b"], @game)
  end

  def test_it_exits
    assert_instance_of Guess, @guess_1
  end

  def test_the_game_class
    assert @game, @guess_1.game
  end

  def test_it_can_respond
    assert_equal ["r", "r", "g", "b"], @guess_1.response
  end

  def test_if_response_is_correct
    assert @guess_1.correct?
    refute @guess_2.correct?
  end

  def test_it_can_determine_correct_elements
    assert_equal 3, @guess_2.elements
  end

  def test_it_can_determine_corect_position
    assert_equal "b", @guess_2.correct_position
  end

  def test_it_can_count_guesses
    assert_equal 2, @guess_2.response.count
  end

end
