class AddPhotoToDish < ActiveRecord::Migration[5.0]
  def change
    add_column :dishes, :photo, :string
  end
end
