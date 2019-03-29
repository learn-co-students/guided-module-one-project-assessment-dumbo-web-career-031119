class MergeNameSymbolColumnCurrency < ActiveRecord::Migration[5.1]

def change
  remove_column(:currencies, :name)
  remove_column(:currencies, :symbol)
end
end
