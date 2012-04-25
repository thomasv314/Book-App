class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :order
      t.references :customer
      t.references :book
      t.integer :quantity

      t.timestamps
    end
    add_index :line_items, :order_id
    add_index :line_items, :customer_id
    add_index :line_items, :book_id
  end
end
