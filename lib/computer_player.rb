require_relative 'mastermind'

class ComputerPlayer
    @@computer_combination = nil
    def self.computer_makes_combinations
        @@computer_combination = Mastermind.Make_Combinations(self.computer_input)
        @@computer_combination
    end

    def self.show_computer_combination
        @@computer_combination
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
