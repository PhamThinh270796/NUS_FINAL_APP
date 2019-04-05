class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
    handle_social_callback("google_oauth2")
  end

  def facebook
    handle_social_callback("facebook")
  end

  private

  def handle_social_callback(provider)
    @user = UserProvider.from_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication
    else
      session["devise.#{provider}_data"] = request.env["omniauth.auth"]
      byebug
      redirect_to new_user_registration_url
    end
  end
end