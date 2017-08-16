class AddDescriptionToPhotos < ActiveRecord::Migration[5.1]
  def change
    add_column :photos, :description, :string
  end
end
