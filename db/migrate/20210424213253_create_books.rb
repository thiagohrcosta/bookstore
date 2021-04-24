class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :genre
      t.string :cover
      t.text :resume
      t.integer :year
      t.integer :rating
      t.string :author
      t.string :references

      t.timestamps
    end
  end
end
