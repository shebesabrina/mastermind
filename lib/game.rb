require 'pry'

class Game
  attr_reader :colors
  # colors = ("rrgb").chars.sample(4)
  def initialize(colors)
    @colors = colors
  end

  def cheat
    @colors
  end

  def instructions
    "OBJECT OF THE GAME\n\n The object of MASTERMIND (r) is to guess a secret code consisting of a series of 4 colored pegs. Each guest results in feedback narrowing down the possibilities of the code. The winner is the player who solves his opponent's secret code with fewer guesses."
  end


end
