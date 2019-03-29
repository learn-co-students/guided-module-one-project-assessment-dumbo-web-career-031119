class AddCryptoQuantToUser < ActiveRecord::Migration[5.1]

  def change
    add_column(:users, :btc_quant, :string)
    add_column(:users, :eth_quant, :string)
  end
end
