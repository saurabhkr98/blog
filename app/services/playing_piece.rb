# frozen_string_literal: true

class PlayingPiece
  attr_reader :piece_type

  def initialize(piece_type)
    @piece_type = piece_type
  end
end
