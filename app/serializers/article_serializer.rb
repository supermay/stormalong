class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :photos
  has_many :photos
end
