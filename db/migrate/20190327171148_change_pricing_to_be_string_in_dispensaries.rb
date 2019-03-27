class ChangePricingToBeStringInDispensaries < ActiveRecord::Migration[5.2]
  def change
    change_column :dispensaries, :pricing, :string
  end
end
