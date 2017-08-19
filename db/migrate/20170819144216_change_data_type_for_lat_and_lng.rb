class ChangeDataTypeForLatAndLng < ActiveRecord::Migration[5.1]
  def change
    change_column(:articles, :lat, :string)
    change_column(:articles, :lng, :string)
  end
end
