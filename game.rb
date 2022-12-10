# frozen_string_literal: true

require './rules'
require './code'
# main class for playing the game
class Game
  attr_reader :code

  def initialize
    Rules.show
    @code = Code.new
  end
end

