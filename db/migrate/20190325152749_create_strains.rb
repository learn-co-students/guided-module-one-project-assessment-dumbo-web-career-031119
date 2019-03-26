class CreateStrains < ActiveRecord::Migration[5.2]
  def change
    create_table :strains do |t|
      t.string :name
      t.integer :indica
      t.integer :sativa
      t.string :benefits
      t.string :medical
    end
  end
end
