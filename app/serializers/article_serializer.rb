class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :date, :updated_at, :photos
  has_many :photos

  def something
    # still empty
  end

  def date
    object.created_at.to_date
  end

  def photos
    object.photos.order(featured: :desc)
  end

end
