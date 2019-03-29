class ChangeEthAndBtcToInt < ActiveRecord::Migration[5.1]

  def change
    change_column(:users, :btc_quant, :integer)
    change_column(:users, :eth_quant, :integer)
  end
end
