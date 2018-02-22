require './lib/game'
require './lib/guess'


class Mastermind
  def initialize
    @game = Game.new
  end

  def start
    puts "Welcome to MASTERMIND\n\n"
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?\n\n"
    response = gets.strip
    if response == "p" || response == "play"
      @game.play
    elsif response == "i" || response == "instructions"
      puts %Q(OBJECT OF THE GAME\n\n The object of MASTERMIND (r) is to guess
      a secret code consisting of a series of 4 colored pegs. Each guest results
      in feedback narrowing down the possibilities of the code. The winner is the
      player who solves his opponent's secret code with fewer guesses.)
    elsif response == "q" || response == "quit"
      puts "Bye!"
    else
      puts "Try again."
    end
  end
end

Mastermind.new.start
