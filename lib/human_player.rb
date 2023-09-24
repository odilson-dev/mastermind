require_relative 'mastermind'
class HumanPlayer
    @@human_combination = nil
    def self.human_makes_combinations
        puts "Enter your color combinations, between 1 and 6"
        user_input = gets.chomp
        combination = Mastermind.Make_Combinations(user_input)
        Mastermind.show_colors(combination)
        @@human_combination = combination
        combination
    end
end
