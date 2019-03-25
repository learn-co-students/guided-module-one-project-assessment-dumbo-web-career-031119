# require 'money'

# money = Money.new(1000, "USD")
# money.cents     #=> 1000
# money.currency  #=> Currency.new("USD")
# puts money

class Currency < ActiveRecord::Base

  has_many :wallets
  belongs_to :user

end
