
class Game
  def initialize(players, board, die)
    @players = players
    @board = board
    @die = die
    @current_player_index = 0
  end

  def play
    loop do
      current_player = @players[@current_player_index]
      puts "#{current_player.name}'s turn"
      move_steps = @die.roll
      puts "Rolled a #{move_steps}"
      current_player.move(move_steps, @board)

      if @board.won?(current_player.position)
        puts "#{current_player.name} wins!"
        break
      end

      @current_player_index = (@current_player_index + 1) % @players.size
    end
  end
end
