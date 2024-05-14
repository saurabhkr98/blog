# frozen_string_literal: true

class PieceType < T::Enum
  enums do
    X = new('x')
    O = new('o')
  end
end
