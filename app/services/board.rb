# frozen_string_literal: true

class Board

  def initialize(size, snakes, ladders)
    @size = size
    @cells = Array.new(size) { |index| Cell.new(index) }
    place_snakes_and_ladders(snakes, ladders)
  end

  def won?(position)
    position >= @size - 1
  end

  def next_position(current_position, move_steps)
    new_position = current_position + move_steps
    return @size - 1 if new_position >= @size

    cell = @cells[new_position]
    if cell.snake
      cell.snake.tail
    elsif cell.ladder
      cell.ladder.end_point
    else
      new_position
    end
  end

  private

  def place_snakes_and_ladders(snakes, ladders)
    snakes.each do |snake|
      @cells[snake.head].snake = snake
    end
    ladders.each do |ladder|
      @cells[ladder.start_point].ladder = ladder
    end
  end
end
