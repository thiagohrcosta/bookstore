class AddPhotoToAuthor < ActiveRecord::Migration[6.1]
  def change
    add_column :authors, :photo, :string
  end
end
