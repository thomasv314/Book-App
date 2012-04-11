class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :isbn
      t.string :title
      t.string :subject
      t.string :authors
      t.decimal :price
      t.integer :stock
      t.references :publisher

      t.timestamps
    end
    add_index :books, :publisher_id
  end
end
