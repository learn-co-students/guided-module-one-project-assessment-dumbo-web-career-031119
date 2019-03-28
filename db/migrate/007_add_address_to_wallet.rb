class AddAddressToWallet < ActiveRecord::Migration[5.1]

  def change
    add_column(:wallets, :address, :text)
  end
end
