# frozen_string_literal: true

class Ladder
  attr_reader :start_point, :end_point

  def initialize(start_point, end_point)
      @start_point = start_point
      @end_point = end_point
  end
end
