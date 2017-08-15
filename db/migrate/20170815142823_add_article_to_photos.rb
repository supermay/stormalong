class AddArticleToPhotos < ActiveRecord::Migration[5.1]
  def change
    add_reference :photos, :article, foreign_key: true
  end
end
