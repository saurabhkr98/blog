# frozen_string_literal: true

module Dto
  class Organization < T::Struct
    const :id, Integer
    const :name, String
    const :active, T::Boolean
    const :founding_year, Integer
  end
end
