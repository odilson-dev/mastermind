require_relative 'lib/mastermind'

class ComputerPlayer
    def self.computer_makes_combinations
        combination = Mastermind.Make_Combinations(self.computer_input)
        Mastermind.show_colors(combination)
    end


    def self.computer_input
        combination_length = [4, 5, 6].sample
        computer_input = []
        combination_length.times do
            computer_input << [1, 2, 3, 4, 5, 6].sample
        end
        computer_input.join
    end
end

puts ComputerPlayer.computer_makes_combinations
