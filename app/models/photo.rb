class Photo < ApplicationRecord
    belongs_to :album, optional: true
    belongs_to :user
end
