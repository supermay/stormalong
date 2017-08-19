class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :date, :updated_at, :photos, :slug
  has_many :photos

  def date
    object.created_at.to_date
  end

  def photos
    object.photos.order(featured: :desc)
  end

  # def id
  #   object.slug
  # end

end
