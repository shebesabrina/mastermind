require 'pry'
class Guess
  attr_reader :response,
              :color_sequence

  def initialize(response, color_sequence)
    @response = response.split('')
    @color_sequence = color_sequence.split('')
  end

  def evaluate_guess
    "#{correct_elements} number of elements are correct. #{correct_position} correct position"
  end

  def correct?
    @response == @color_sequence
  end

  def correct_elements
    (@response & @color_sequence).count
  end

  def correct_position
     @response.select.with_index { |item, index|
       item == @color_sequence[index]
     }.count
  end

end
