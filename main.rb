require_relative 'lib/human_player'
require_relative 'lib/computer_player'
require_relative 'lib/mastermind.rb'
require 'colorize'


# The laptop is the Breaker
# Enter the combination that you want the laptop to break

Mastermind.set_combination_to_guess(ComputerPlayer.computer_makes_combinations)
puts "Mastermin guess #{Mastermind.show_combination_to_guess}"
puts Mastermind.send_feedback(ComputerPlayer.computer_makes_combinations).join
puts "Computer #{ComputerPlayer.show_computer_combination}"