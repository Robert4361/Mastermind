# frozen_string_literal: true

# this class explains the game rules and instructions
class Rules
  def self.show
    puts 'You will play Mastermind'
    puts "It's a game where the computer generates a random code which you have to guess"
    puts 'The code consists of 4 numbers between 1 and 6, so an example code could be [1,3,6,1]'
    puts 'You can duplicate numbers, so a valid code could be [1,1,1,1]'
    puts 'After every guess you will get clues'
    puts '  - The amount of numbers which are in correct place and correct value'
    puts '  - The amount of numbers which are of correct value, but wrong place'
    puts 'Write your guesses in the form of a 4 digit number, no spaces or commas needed'
    puts 'You have 12 turns to guess. Good luck!'
  end
end
