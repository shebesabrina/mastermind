require './test/test_helper'
require './lib/game'
require './lib/guess'
require 'pry'

class GuessesTest < Minitest::Test
  def setup
    @guess = Guess.new
    @game = Game.new("rrgb")

    @player_input1 = Guess.new(["r", "r", "g", "b"], @game)
    @player_input2 = Guess.new(["b", "g", "r", "b"], @game)
  end

  def test_it_exits
    assert_instance_of Guess, @guess
  end

  def test_the_game_class
    assert @game, @player_input1.game
  end

  def test_it_can_respond
    assert_equal ["r", "r", "g", "b"], @player_input1.response
  end

  def test_if_response_is_correct
    assert @player_input1.correct?
    refute @player_input2.correct?
  end

  def test_it_can_determine_correct_elements
    assert_equal 3, @player_input2.elements
  end

  def test_it_can_determine_corect_position
    assert_equal "b", @player_input2.correct_position
  end

  def test_it_can_count_guesses
    assert_equal 2, @player_input2.response.count
  end

end
