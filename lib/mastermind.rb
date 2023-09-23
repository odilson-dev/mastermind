require 'colorize'

class Mastermind
    @@all_combinations = [  [1 , "light_yellow"],
                            [2 , "light_green"],
                            [3 , "light_white"],
                            [4 , "light_cyan"],
                            [5 , "light_red"],
                            [6 , "light_magenta"] ]

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
end