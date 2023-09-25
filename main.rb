require_relative 'lib/human_player'
require_relative 'lib/computer_player'
require_relative 'lib/mastermind.rb'
require 'colorize'


# I am The Breaker
puts "The computer is making the color combination that you've to guess"
Mastermind.set_secret_combination(ComputerPlayer.computer_create_secret_combination)
Mastermind.show_colors(Mastermind.show_secret_combination)

computer_player_combination = ComputerPlayer.computer_make_combination
feedback = Mastermind.send_feedback(computer_player_combination)

puts Mastermind.show_colors(computer_player_combination)
p feedback
10.times do
    computer_player_combination = ComputerPlayer.guess_combination_from_feedback(feedback)
    feedback = Mastermind.send_feedback(computer_player_combination)
    
    puts "feedback"
    puts feedback.inspect
    puts "Merged"
    p Mastermind.send_feedback(merge(ComputerPlayer.show_valid_colors, computer_player_combination))
    p Mastermind.show_colors(merge(ComputerPlayer.show_valid_colors, computer_player_combination))
end

