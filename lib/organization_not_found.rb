class OrganizationNotFound < BaseError
  def initialize(message: I18n.t('organization.not_found'), status: HttpStatus::NotFound)
    super
  end
end
