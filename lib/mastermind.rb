puts "Welcome to MASTERMIND\n\n"
puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?\n\n"
response = gets.strip

if response == "p" || response == "play"
  #play game
  puts "I have generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.\n\nWhat's your guess?\n\n"
  guess = gets.strip
  if guess == "q" || guess == "quit"
    puts "This means quit"
    #exit game
  elsif guess == "c" || guess == "cheat"
    puts "cheat"
    #print out colors
  elsif guess.length < 4
    puts "too short"
  elsif guess.length > 4
    puts "too long"
  elsif secret code
    #end game flow
  else
    puts "'RRGB' has 3 of the correct elements with 2 in the correct positions. You've taken 1 guess"
  end
elsif response == "i" || response == "instructions"
  puts "Here are the instructions"
  #show instructions
elsif response == "q" || response == "quit"
  puts "Bye!"
  #exit game
else
  puts "Try again."
end
