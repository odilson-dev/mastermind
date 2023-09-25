require_relative 'mastermind'
require 'colorize'
def is_between_1_6?(s)
    code = s.ord
    # 48 is ASCII code of 0
    # 57 is ASCII code of 9
    49 <= code && code <= 54
  end

class HumanPlayer
    def self.human_makes_combinations
        while true do
            puts "Enter your color combinations, between 1 and 6"
            user_input = gets.chomp
            if !is_between_1_6? user_input
                puts "Your combination should contain any digit from 1 to 6, other characters are not allowed".light_red
                redo
            elsif user_input.length != 4
                puts "Your combination should should be 4 digits length".light_red
                redo
            else
                break
            end
        end
        
        combination = Mastermind.Make_Combinations(user_input)
        combination
    end
    def self.create_secret_combination
        Mastermind.set_secret_combination(Mastermind.Make_Combinations(self.human_makes_combinations))
    end
end
