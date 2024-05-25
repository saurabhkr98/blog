# frozen_string_literal: true

class TicTacToeGame
  attr_reader :players, :board

  def initialize
    initialize_game
  end

  def start_game
    no_winner = true
    first_player_turn = true
    while no_winner
      puts "player#{player_turn(first_player_turn)} turn "
      board.print
      row = gets.chomp.to_i
      col = gets.chomp.to_i
      if board.valid_move?(row, col)
        board.add_piece(row, col, playing_piece(first_player_turn))
        if board.won?(row, col, playing_piece(first_player_turn))
          puts "player#{player_turn(first_player_turn)} won"
          break
        end
        unless board.is_free?
          puts "tie"
          break
        end
        first_player_turn = !first_player_turn
      else
        puts "wrong move. Try again"
      end
    end
  end

  private

  def initialize_game
    @players = [Player.new('sumit', PlayingPieceX.new), Player.new('amit', PlayingPieceO.new)]
    @board = Board.new(3)
  end

  def player_turn(first_player_turn)
    first_player_turn ? 1 : 2
  end

  def playing_piece(first_player_turn)
    first_player_turn ? players[0].playing_piece : players[1].playing_piece
  end
end
