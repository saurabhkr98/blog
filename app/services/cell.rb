# frozen_string_literal: true

class Cell
  attr_accessor :snake, :ladder

  def initialize(index)
    @index = index
    @snake = nil
    @ladder = nil
  end
end
