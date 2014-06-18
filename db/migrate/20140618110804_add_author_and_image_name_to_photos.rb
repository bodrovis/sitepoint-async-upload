class AddAuthorAndImageNameToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :author, :string
    add_column :photos, :image_name, :string
    remove_column :photos, :title, :string
  end
end
