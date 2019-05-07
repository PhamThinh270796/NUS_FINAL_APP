class UserProvider < ApplicationRecord
  belongs_to :user

  def self.from_omniauth(auth)
    user_provider = UserProvider.where(provider: auth.provider, uid: auth.uid).first
    unless user_provider.nil?
      user_provider.user
    else
      user = User.where(email: auth.info.email).first
      if user.nil?
        user = User.create!(
          first_name: auth.info.name.partition(" ").first,
          last_name: auth.info.name.partition(" ").last,
          email: auth.info.email,
          password: Devise.friendly_token[0,20],
          remote_profile_picture_url: auth.info.image
        )
      end
      user.user_providers.create!(provider: auth.provider, uid: auth.uid, user_id: user.id)
      user
    end
  end
end
