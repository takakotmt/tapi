class Board < ApplicationRecord
  mount_uploader :image, ImagesUploader
  belongs_to :user
end
