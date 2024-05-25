class Position
  attr_accessor :x, :y

  def initialize(x, y)
    @x, @y = x, y
  end
end

class Piece
  attr_reader :color
  attr_accessor :position

  def initialize(color, position)
    @color = color
    @position = position
  end

  def move(new_position, board)
    raise NotImplementedError, 'Subclasses must implement the move method'
  end
end

class Rook < Piece
  def move(new_position, board)
    # Rook move logic
    true # Placeholder
  end
end

class Knight < Piece
  def move(new_position, board)
    # Knight move logic
    true # Placeholder
  end
end

# Other piece classes (Bishop, Queen, King, Pawn) would be implemented similarly

class ChessBoard
  def initialize
    @board = Array.new(8) { Array.new(8) }
    initialize_board
  end

  def move_piece(from, to)
    piece = @board[from.x][from.y]
    if piece && piece.move(to, @board)
      @board[to.x][to.y] = piece
      piece.position = to
      @board[from.x][from.y] = nil
      true
    else
      false
    end
  end

  def display
    @board.each do |row|
      row.each do |piece|
        if piece
          print 'P ' # Simplified for the example
        else
          print '. '
        end
      end
      puts
    end
  end

  private

  def initialize_board
    # Initialize pieces on the board (omitted for brevity)
  end
end

class Game
  def initialize
    @board = ChessBoard.new
  end

  def start
    # Initialize players, set up the board, etc.
    play
  end

  private

  def play
    loop do
      @board.display
      # Handle player input and game logic
      puts 'Enter move (e.g., "0 0 0 1" for moving from (0, 0) to (0, 1))'
      from_x, from_y, to_x, to_y = gets.split.map(&:to_i)
      from = Position.new(from_x, from_y)
      to = Position.new(to_x, to_y)
      unless @board.move_piece(from, to)
        puts 'Invalid move!'
      end
    end
  end
end

Game.new.start
