# frozen_string_literal: true

# This class handles generating and verifying game code
class Code
  attr_reader :value

  def initialize
    @value = generate
  end

  def generate
    Array.new(4) { rand(1..6)}
  end

  def code_correct?(code)
    code = code.chars.map(&:to_i)
    return true if code == @value

    get_clues(code)
  end

  def get_clues(code) # rubocop:disable Layout/MethodLength
    clues = [0, 0]
    4.times do |i|
      if code[i] == @value [i]
        clues[0] += 1
        code[i] = 0
        next
      elsif code.include?(@value[i])
        clues[1] += 1
        code[code.index(@value[i])] = 0
      end
    end
    clues
  end
end
