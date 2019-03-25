class AddThcAndCbdToStrain < ActiveRecord::Migration[5.2]
  def change
    add_column :strains, :thc, :float
    add_column :strains, :cbd, :float
  end
end
