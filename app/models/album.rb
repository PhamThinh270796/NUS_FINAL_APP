class Album < ApplicationRecord
  has_many :photos, dependent: :destroy
  belongs_to :user
  accepts_nested_attributes_for :photos
  scope :shared, -> { where(is_public: true) }
  scope :search, -> (keyword) { where("album_title LIKE ?", "%#{keyword}%")}
end
