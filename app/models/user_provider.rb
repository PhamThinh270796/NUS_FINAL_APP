class UserProvider < ApplicationRecord
  belongs_to :user

  def self.from_omniauth(auth)
    user = UserProvider.where(:provider => auth.provider, :uid => auth.uid).first
    unless user.nil?
      user.user
    else
      registered_user = User.where(:email => auth.info.email).first
      unless registered_user.nil?
        UserProvider.create!(provider: auth.provider, uid: auth.uid, user_id: registered_user.id)
        registered_user
      else
        user = User.create!(
          first_name: auth.info.name.partition(" ").first,
          last_name: auth.info.name.partition(" ").last,
          email: auth.info.email,
          password: Devise.friendly_token[0,20],
          remote_profile_picture_url: auth.info.image
          )
        user_provider = UserProvider.create!(provider:auth.provider, uid:auth.uid, user_id: user.id)
        user
      end
    end
  end
end
