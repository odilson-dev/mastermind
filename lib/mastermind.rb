require 'colorize'

class Mastermind
    @@all_combinations = [  [1 , "light_yellow"],
                            [2 , "light_green"],
                            [3 , "light_white"],
                            [4 , "light_cyan"],
                            [5 , "light_red"],
                            [6 , "light_magenta"]]
    @@combination_to_guess = []


    def self.set_combination_to_guess(combination_to_guess)
        @@combination_to_guess = combination_to_guess
    end
    def self.show_combination_to_guess
        @@combination_to_guess
    end


    def self.show_colors(color_combinations = @@all_combinations)
        arr = []
        color_combinations.each do |value|
            arr << "   #{value[0]}   ".colorize(background: value[1].to_sym) + " "
        end
        puts arr.join("")
    end


    def self.Make_Combinations(string_numbers)
        arr = string_numbers.split("")
        user_combination = Array.new
        arr.each do |number|
            for combination in @@all_combinations 
                if combination[0] == number.to_i
                    user_combination << combination
                end
            end
        end
        user_combination
    end
    
    def self.send_feedback(newcombination)
        # Add 1 if the color is in the right location
        # if the color isn't in the right location but 
        # is present in the combination add 2
        #return a array with the feedbacks
        feedback = []
        newcombination.each_with_index do |combination, index|
            if combination == @@combination_to_guess[index]
                feedback << 1
            elsif @@combination_to_guess.include?(combination)
                feedback << 2
            end
        end
        feedback
    end
end