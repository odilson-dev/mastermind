require 'colorize'

class Mastermind
    @@colors = { 1 => "light_yellow", 2 => "light_green", 3 => "light_white", 4 => "light_cyan", 
                5 => "light_red", 6 => "light_magenta" }

    def self.show_colors
        arr = []
        @@colors.each do |key, value|
            arr << "   #{key}   ".colorize(background: value.to_sym) + " "
        end
        puts arr.join("")
    end

    def self.Make_Combinations(string_numbers)
        arr = string_numbers.split
        user_combination = Hash.new
        arr.each do |number|
            user_combination[number.to_i] = @@colors[number]
        end
        @@user_combination
    end
end

Mastermind.show_colors