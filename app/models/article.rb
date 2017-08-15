class Article < ApplicationRecord
  has_many :photos, dependent: :destroy
end
