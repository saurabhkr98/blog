# frozen_string_literal: true

class OrganizationRepository
  extend T::Sig

  sig { returns(T::Array[Dto::Organization]) }
  def all
    Organization.all.map { |org| Mapper::Organization.to_dto(dto: Dto::Organization, object: org) }
  end

  sig { params(request: Entity::OrganizationCreateRequest).returns(Dto::Organization) }
  def create(request:)
    Mapper::Organization.to_dto(dto: Dto::Organization,
                                object: Organization.create(name: request.name,
                                                            active: request.active, founding_year: request.founding_year))
  end

  sig { params(id: Integer).returns(Dto::Organization) }
  def get(id:)
    org = Organization.find(id)
    Mapper::Organization.to_dto(dto: Dto::Organization, object: org)
  rescue ActiveRecord::RecordNotFound
    raise OrganizationNotFound.new(message: I18n.t('organization.not_found', id:))
  end
end
