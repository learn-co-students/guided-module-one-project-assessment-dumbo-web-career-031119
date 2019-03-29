class CreateWallet < ActiveRecord::Migration[5.1]

  def change
    create_table :wallets do |t|
      t.integer :user_id
      t.integer :currency_id
      t.float :balance
    end
  end
end
