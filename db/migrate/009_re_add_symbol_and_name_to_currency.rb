class ReAddSymbolAndNameToCurrency < ActiveRecord::Migration[5.1]

  def change
    add_column(:currencies, :name, :string)
    add_column(:currencies, :symbol, :string)
  end
end
