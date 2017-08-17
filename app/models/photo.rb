class Photo < ApplicationRecord
  belongs_to :article
  mount_uploader :image, ImageUploader
  def self.recent(number)
    Photo.last(number).reverse
  end
end
