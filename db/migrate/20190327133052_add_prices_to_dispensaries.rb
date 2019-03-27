class AddPricesToDispensaries < ActiveRecord::Migration[5.2]
  def change
    add_column :dispensaries, :pricing, :float
  end
end
