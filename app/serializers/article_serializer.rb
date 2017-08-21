class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :date, :created_at, :updated_at, :photos, :lat, :lng
  has_many :photos

  def date
    object.created_at.to_date
  end

  def photos
    object.photos.order(featured: :desc)
  end

end
