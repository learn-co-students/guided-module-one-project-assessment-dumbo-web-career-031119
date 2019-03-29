class SeparateSymbolnameFromCurrency < ActiveRecord::Migration[5.1]

  def change
    remove_column(:currencies, :symbolname, :string)
  end
end
