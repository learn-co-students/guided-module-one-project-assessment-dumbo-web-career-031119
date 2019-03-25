class CreateDispensaryInventory < ActiveRecord::Migration[5.2]
  def change
    create_table :dispensary_inventories do |t|
      t.integer :strain_id
      t.integer :dispensary_id
    end
  end
end
