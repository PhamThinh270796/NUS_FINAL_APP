class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

    protected
    def after_sign_in_path_for(resources)
      root_path
    end

    def after_sign_out_path_for(resources)
      new_user_session_path
    end

    def after_sign_up_path_for(resources)
      new_user_session_path
    end

    def authenticate_user!
      if user_signed_in?
        super
      else
        redirect_to new_user_session_path
      end
    end

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    end
end
