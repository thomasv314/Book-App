class CreatePublishers < ActiveRecord::Migration
  def change
    create_table :publishers do |t|
      t.string :name
      t.string :city
      
     
      t.timestamps
    end
    add_index :publishers, :name
  end
end
