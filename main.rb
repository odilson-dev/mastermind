require_relative 'lib/mastermind'
require_relative 'lib/game'
require 'colorize'

puts "How to play Mastermind:

This is a 1-player game against the computer.
You can choose to be the code maker or the code breaker.

There are six different number/color combinations:

  #{Mastermind.show_colors}  


The code maker will choose four to create a 'master code'. For example,

 #{Mastermind.show_colors(Mastermind.Make_Combinations("1341"))}

As you can see, there can be more than one of the same number/color.
In order to win, the code breaker needs to guess the 'master code' in 12 or less turns.


Clues:
After each guess, there will be up to four clues to help crack the code.

 #{" + ".light_green} This clue means you have 1 correct number in the correct location.

  +  This clue means you have 1 correct number, but in the wrong location.


Clue Example:
To continue the example, using the above 'master code' a guess of '1463' would produce 3 clues:

#{Mastermind.show_colors(Mastermind.Make_Combinations("1341"))}     Clues: #{Mastermind.vizualize_feedback([1, 2, 2])}


The guess had 1 correct number in the correct location and 2 correct numbers in a wrong location.

It's time to play!"
play = "y"
until play == "n" do
    puts "Would you like to be the code CREATOR or code BREAKER?"
    while true do
        puts "Press '1' to be the code CREATOR \nPress '2' to be the code BREAKER"
        answer = gets.chomp
        if answer == "1" or answer == "2"
            break
        end
        puts "Please choose 1 or 2"
    end
    if answer == "1"
        be_the_creator
    elsif answer == "2"
        be_the_breaker
    end
    puts "Do you want to play again [y/n]?"
    play = gets.chomp
end
puts "It was a pleasure for me to make this game :) \nThank you for playing!"
