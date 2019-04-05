class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :trackable, :omniauthable, omniauth_providers: [:google_oauth2, :facebook]
  has_many :albums, dependent: :destroy
  has_many :photos
  has_many :user_provider, dependent: :destroy
  mount_uploader :profile_picture, AvatarUploader
  validates :first_name, length: {maximum: 25}, presence: true
  validates :last_name, length: {maximum: 25}, presence: true
  validates :password, length: {maximum: 64, minumum: 6}, on: :create
  validates :email, length: {maximum: 255}, uniqueness: true, format: {with: /\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}/}
end
