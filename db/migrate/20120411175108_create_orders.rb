class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :payment_type
      t.string :card
      t.date :date
      t.string :status
      t.references :customer

      t.timestamps
    end
    add_index :orders, :customer_id
  end
end
