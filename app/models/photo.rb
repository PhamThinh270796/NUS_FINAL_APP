class Photo < ApplicationRecord
  belongs_to :album, optional: true
  belongs_to :user
  mount_uploader :path, PhotoUploader
  scope :shared, -> { where(is_public: true) }
  scope :search, -> (keyword) { where("title LIKE ?", "%#{keyword}%")}
  before_create :set_photo_is_public

  def set_photo_is_public
    if !self.album_id.nil?
      self.is_public = self.album.is_public
      self.title = self.album.album_title
      self.description = "Belong to album: " + self.album.album_title
    end
  end
end
