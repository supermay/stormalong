class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :image, :src, :description, :featured, :article_id
  belongs_to :article

  def src
    object.image.url
  end

end
