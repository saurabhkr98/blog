class OrganizationService
  extend T::Sig

  attr_reader :repository

  sig { returns(OrganizationRepository) }
  def initialize
    @repository = OrganizationRepository.new
  end

  sig { returns(T::Array[Entity::Organization]) }
  def all
    repository.all.map { |org| EntityMapper::Organization.to_entity(entity: Entity::Organization, dto: org)}
  end


  sig { params(request: Entity::OrganizationCreateRequest).returns(Entity::Organization)}
  def create(request:)
    EntityMapper::Organization.to_entity(entity: Entity::Organization, dto: repository.create(request: request))
  end
end
