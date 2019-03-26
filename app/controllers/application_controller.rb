class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_locale

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    devise_parameter_sanitizer.permit(:account_update, keys:[:first_name,:last_name])
  end

  def after_update_path_for
    edit_user_registration_path
  end

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
end
