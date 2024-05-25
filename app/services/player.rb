# frozen_string_literal: true

class Player
  attr_reader :name, :position

  def initialize(name)
    @name = name
    @position = 0
  end

  def move(steps, board)
    @position = board.next_position(@position, steps)
    puts "Player: #{@name} is at position #{@position}"
  end
end
