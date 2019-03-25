class AddSymbolAndNameToCurrency < ActiveRecord::Migration[5.1]

  def change
    add_column(:currencies, :symbolname, :string)
  end
end
