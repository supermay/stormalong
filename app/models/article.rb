class Article < ApplicationRecord
  has_many :photos, dependent: :destroy

  # attr_accessor :title, :body, :photos
end
