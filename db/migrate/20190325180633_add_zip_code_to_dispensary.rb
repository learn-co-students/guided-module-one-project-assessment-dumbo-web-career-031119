class AddZipCodeToDispensary < ActiveRecord::Migration[5.2]
  def change
    add_column :dispensaries, :zip_code, :integer
  end
end
