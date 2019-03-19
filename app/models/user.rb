class User < ApplicationRecord
    has_many :albums, dependent: :destroy
    has_many :photos

    validates: [:first_name, :last_name], length: {maximum: 25}
    validates: :password, length: {maximum: 64}
    validates: :email, length: {maximum: 255}, uniqueness: true, format: {with: /^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/}
end
