# frozen_string_literal: true

class Snake
  attr_reader :head, :tail

  def initialize(head, tail)
    @head = head
    @tail = tail
  end
end
