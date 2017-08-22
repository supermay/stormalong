class AddDefaultToArticle < ActiveRecord::Migration[5.1]
  def change
    change_column_default :articles, :published, true
  end
end
