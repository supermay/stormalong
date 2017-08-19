class AddLatToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :lat, :decimal
    add_column :articles, :lng, :decimal
  end
end
