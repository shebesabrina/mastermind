require 'pry'

class Game
  attr_reader :color_sequence,
              :player_input
  # color_sequence = ("rrgb").chars.sample(4)
  def initialize
    @color_sequence = "rrgb"
    @guesses_count = 0
  end

  def instructions
    %Q(OBJECT OF THE GAME\n\n The object of MASTERMIND (r) is to guess
    a secret code consisting of a series of 4 colored pegs. Each guest results
    in feedback narrowing down the possibilities of the code. The winner is the
    player who solves his opponent's secret code with fewer guesses.)
  end

  def play
    puts "I have generated a beginner sequence with four elements made up of: (r)ed,
          \n(g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
          \nWhat's your guess?"
    10.times do
      @player_input = gets.chomp
      if @player_input == "q" || @player_input == "quit"
        puts "Bye!"
        break
      elsif @player_input == "c" || @player_input == "cheat"
        cheat
      elsif @player_input.length < 4
        puts "too short"
      elsif @player_input.length > 4
        puts "too long"
      else
        @guess = Guess.new(@player_input, @color_sequence)
        if @guess.correct?
          puts 'you win'
          break
        else
          puts @guess.evaluate_guess
        end
      end

      add_guess
        puts "#{@guesses_count} guesses guessed"
    end
    puts "you suck and you lose"
  end

  def add_guess
    @guesses_count += 1
  end

  def cheat
    @color_sequence
  end
end
