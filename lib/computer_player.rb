require_relative 'mastermind'

def merge(arr1, arr2)
    arr1.each_with_index do |value, index|
        if value == nil
            arr1[index] = arr2[index]
        end
    end
    arr1
end
def thinking
    # Prints a text-based "spinner" element while work occurs.
    spinner = Enumerator.new do |e|
    loop do
      e.yield '|'
      e.yield '/'
      e.yield '-'
      e.yield '\\'
    end
  end
  1.upto(20) do |i|
    printf("\rThe laptop is thinking about a combination: %s", spinner.next)
    sleep(0.1)
  end
end

class ComputerPlayer
    @@color_available = [1, 2, 3, 4, 5, 6]
    @@computer_combination = nil
    @@valid_colors = [nil, nil, nil, nil]
    @@feedback_old_length = 0
    @@try_count = 0

    def self.show_valid_colors
        @@valid_colors
    end
   
    def self.computer_create_secret_combination
        Mastermind.set_secret_combination(Mastermind.Make_Combinations("3254"))
    end



    def self.computer_input
        combination_length = 4 # [4, 5, 6].sample
        computer_input = []
        combination_length.times do
            computer_input << [1, 2, 3, 4, 5, 6].sample
        end
        computer_input.join
    end

    
    def self.guess_combination_from_feedback(feedback)
        if feedback.empty? and @@computer_combination != nil
            @@color_available.delete(@@computer_combination[0][0])
        elsif feedback.length == 4 
            feedback.each_with_index do |value, index|
                if feedback[index] == 1
                        @@valid_colors[index] = @@computer_combination[index]
                end
            end
        end
        @@computer_combination = self.computer_make_combination
    end

    def self.computer_make_combination
        @@computer_combination = Mastermind.Make_Combinations(Array.new(4, @@color_available.sample).join)
        
        @@computer_combination
    end

end
