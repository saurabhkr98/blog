module EntityMapper
  class Organization
    class << self
      extend T::Sig

      sig { params(entity: T.class_of(Entity::Organization), dto: Dto::Organization).returns(Entity::Organization) }
      def to_entity(entity:, dto:)
        entity.new(
          id: dto.id,
          name: dto.name,
          active: dto.active,
          founding_year: dto.founding_year,
        )
      end
    end
  end
end