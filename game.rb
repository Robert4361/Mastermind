# frozen_string_literal: true

require './rules'
require './code'
# main class for playing the game
class Game
  attr_reader :code

  def initialize
    Rules.show
    @code = Code.new
    play
  end

  def turn
    puts 'Write your code'
    player_guess = 0
    loop do
      player_guess = gets.chomp.chars.map(&:to_i)
      break unless player_guess.include?(0)
    end
    @code.code_correct?(player_guess)
  end

  def play # rubocop:disable Metrics/MethodLength
    12.times do
      result = turn
      if result == true
        puts 'Good job, you guessed the code'
        return
      else
        puts "Numbers with correct value and position: #{result[0]}"
        puts "Numbers with correct value, but wrong position: #{result[1]}"
      end
    end
    puts 'You guessed wrong 12 times, good luck on your next try!'
  end
end
