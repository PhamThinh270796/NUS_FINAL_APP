class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
    has_many :albums, dependent: :destroy
    has_many :photos
    validates :first_name, length: {maximum: 25}, presence: true
    validates :last_name, length: {maximum: 25}, presence: true
    validates :password, length: {maximum: 64}
    validates :email, length: {maximum: 255}, uniqueness: true, format: {with: /\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}/}
end
