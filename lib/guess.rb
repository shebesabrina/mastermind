require 'pry'
class Guess
  attr_reader :player_input,
              :color_sequence

  def initialize(player_input, color_sequence)
    @player_input = player_input.split('')
    @color_sequence = color_sequence.split('')
  end

  def evaluate_guess
    "#{correct_elements} number of elements are correct. #{correct_position} correct position"
  end

  def correct?
    @player_input == @color_sequence
  end

  def correct_elements
    point = 0
    @color_sequence.each_with_index do |color, index|
      point += 1 if player_input[index..-1].include? color
    end
      point
  end

  def correct_position
     @player_input.select.with_index { |item, index|
       item == @color_sequence[index]
     }.count
  end

end
