class Photo < ApplicationRecord
    belongs_to :album, optional: true
    belongs_to :user
    mount_uploader :path, PhotoUploader
    validates :path, presence: true
end
