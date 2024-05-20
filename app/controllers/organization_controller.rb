# frozen_string_literal: true

class OrganizationController < ApplicationController
  extend T::Sig

  sig { returns(String) }
  def index
    render json: organization_service.all
  end

  sig { returns(String) }
  def create
    render json: organization_service.create(request: Entity::OrganizationCreateRequest.new(name: params[:name],
                                                                                            active: params[:active], founding_year: params[:founding_year]))
  end

  def get
    render json: organization_service.get(id: params[:id].to_i)
  rescue OrganizationNotFound => e
    render json: { message: e.message }, status: 404
  end

  private

  sig { returns(OrganizationService) }
  def organization_service
    @organization_service ||= OrganizationService.new
  end
end
