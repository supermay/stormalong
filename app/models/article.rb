class Article < ApplicationRecord
  has_many :photos, dependent: :destroy

  accepts_nested_attributes_for :photos
  # attr_accessor :title, :body, :photos
  def self.recent(number)
    Article.last(number).reverse
  end

end
