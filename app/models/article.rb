class Article < ApplicationRecord
  has_many :photos, dependent: :destroy

  accepts_nested_attributes_for :photos
  # attr_accessor :title, :body, :photos

  validates :title, presence: true, uniqueness: true

  def self.recent(number)
    Article.last(number).reverse
  end

  extend FriendlyId
  friendly_id :title, use: :slugged

end
