class User < ActiveRecord::Base
  #
  # attr_reader :username
  #
  # def initialize(username, password, account_balance = 100000)
  #   @username = username
  #   @password = password
  #   @account_balance = account_balance
  # end
  # has_secure_password
  has_many :wallets
  # belongs_to :trading_interface
end
