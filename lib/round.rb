require 'pry'

class Round
  attr_reader :guess

  def initialize(guess)
    @guess = guess
    @guesses = []
  end
end
