require 'pry'

class Game
  attr_reader :colors,
              :player_input
  # colors = ("rrgb").chars.sample(4)
  def initialize
    @colors = 'rrgb'
    @guesses_count = 0
  end

  def play
    puts "I have generated a beginner sequence with four elements made up of: (r)ed,
          (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
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
        @guess = Guess.new(@player_input, @colors)
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
    puts @colors
  end
end
