class CreateBusinessWebsites < ActiveRecord::Migration
  def change
    create_table :business_websites do |t|
      t.string :domain_name
      t.string :domain_suffix

      t.timestamps
    end
  end
end
