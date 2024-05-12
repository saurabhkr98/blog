class ApplicationController < ActionController::Base
  # include ActionController::Serialization
  # protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token

end
