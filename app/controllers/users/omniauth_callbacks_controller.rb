class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  before_action :handle_social_callback

  def google_oauth2
  end

  def facebook
  end

  private

  def handle_social_callback
    @user = UserProvider.from_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end
end