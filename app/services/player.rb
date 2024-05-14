# frozen_string_literal: true

class Player
  attr_accessor :name, :playing_piece

  def initialize(name, playing_piece)
    @name = name
    @playing_piece = playing_piece
  end
end
