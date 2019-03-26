class CreateDispensaries < ActiveRecord::Migration[5.2]
  def change
    create_table :dispensaries do |t|
      t.string :name
      t.string :location
      t.string :town
      t.string :zip_code
    end
  end
end
