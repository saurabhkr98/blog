# frozen_string_literal: true

class Board
  attr_reader :size, :matrix

  def initialize(size)
    @size = size
    @matrix = Array.new(size) { Array.new(size) }
  end

  def add_piece(row, col, playing_piece)
    if matrix[row][col].nil?
      matrix[row][col] = playing_piece
    end
  end

  def is_free?
    size.times do |i|
      size.times do |j|
        if matrix[j][i] == nil
          return true
        end
      end
    end
    false
  end

  def won?(r, c, playing_piece)
    row_match = true
    col_match = true
    diagonal_match = true
    anti_diagonal_match = true
    size.times do |i|
      if matrix[i][c].nil? || matrix[i][c] != playing_piece
        row_match = false
      end
    end
    size.times do |j|
      if matrix[r][j].nil? || matrix[r][j] != playing_piece
        col_match = false
      end
    end
    size.times do |i|
      if matrix[i][i].nil? || matrix[i][size - i] != playing_piece
        diagonal_match = false
      end
    end
    size.times do |j|
      if matrix[j][size - 1 - j].nil? || matrix[j][size - 1 - j] != playing_piece
        anti_diagonal_match = false
      end
    end
    row_match || col_match || diagonal_match || anti_diagonal_match
  end

  def valid_move?(row, col)
    if matrix[row][col].nil?
      return true
    end
    false
  end

  def print
    size.times do |i|
      row = ''
      size.times do |j|
        if matrix[j][i] == nil
          row = row + ' '
        else
          row = row + matrix[j][i].piece_type.serialize
        end
        if j < size - 1
          row = row + '|'
        end
      end
      puts "#{row}\n"
    end
  end
end
