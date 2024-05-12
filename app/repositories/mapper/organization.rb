module Mapper
  class Organization
    class << self
      extend T::Sig

      def to_dto(dto:, object:)
        dto.new(
          id: object[:id],
          name: object[:name],
          active: object[:active],
          founding_year: object[:founding_year],
        )
      end
    end
  end
end