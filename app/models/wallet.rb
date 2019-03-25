class Wallet < ActiveRecord::Base

  has_many :users, :currencies

end
