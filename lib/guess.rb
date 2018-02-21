require 'pry'
class Guess
  attr_reader :response,
              :game

  def initialize(response, game)
    @response = response
    @game = game
  end

  def correct?
    @response == @game.colors
  end

  def elements
    (@response & @game.colors).count
  end

  def correct_position
     @response.find.with_index { |item, index|
       item == @game.colors[index]
     }
     # binding.pry
  end

end
