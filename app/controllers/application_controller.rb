class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permited_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
  devise_parameter_sanitizer.for(:sign_up) << :username
  end
end
