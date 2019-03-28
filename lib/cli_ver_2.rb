# # require_relative '../config/environment'
# require 'pry'
# class CommandLineInterface
#
#   # Currency.destroy_all
#   # User.destroy_all
#
# def welcome
#   # Currency.destroy_all
#   # User.destroy_all
#   # Wallet.destroy_all
#
#   # Clear terminal at runtime
#   system "clear"
#   puts "
#   #    _____ _____ ____ _____
#   #   |_   _| ____/ ___|_   _|
#   #     | | |  _| \___ \ | |
#   #     | | | |___ ___) || |
#   #     |_| |_____|____/ |_|
#   #
# "
#   # Intro message (Needs alteration)
#   puts 'Please enter your name below to continue:'
#   @name = gets.chomp.capitalize
#   # To Do Maybe add password?
#   # puts 'Please enter a password:'
#   # pass = gets.chomp
#
#
#   ############### TESTS
#
#   #
#   # def get_user_balance
#   #   user_balance = User.find_by(balance: 1).address
#   #
#   # end
#
#
#   #############
#
#
#   ######## Variables #########
#
#   # Creates user with name assigned from input, default pass, and default starting balance
#   def create_user
#   @@user = User.create(username: "#{@name}", password: "pass", balance: 100000)
# end
# create_user
#
# # Creates the two currencies to be called later
# # Update to not run more than once
# def create_currency
#   # Currency.destroy_all
#   # @@all = []
#   @btc = Currency.new(price: 4025, name: "Bitcoin", symbol: "BTC")
#   @eth = Currency.new(price: 138, name: "Ethereum", symbol: "ETH")
# end
# create_currency-
# # def get_currency
# #   @btc = Currency.find_by(name: "Bitcoin")
# #   @eth = Currency.find_by(name: "Ethereum")
# # end
# # get_currency
#
#
#   # Welcomes the user by name and displays balance
#   puts "Welcome, #{@@user.username}! Your current balance is: $#{@@user.balance}0. What would you like to do today?"
#
#   # Gives options
#   purchase_bitcoin = '₿ 1. Purchase Bitcoin.'
#   purchase_ethereum = '₿ 2. Purchase Ethereum.'
#   sell_bitcoin = '₿ 3. Sell Bitcoin.'
#   sell_ethereum = '₿ 4. Sell Ethereum.'
#   check_prices = '₿ 5. Check prices.'
#
#   # Menu Options
#   puts "#{purchase_bitcoin}\n#{purchase_ethereum}\n#{sell_bitcoin}\n#{sell_ethereum}\n#{check_prices}\n"
#
#   # Gets users selection
#   response = gets.chomp
#
#   ######## Alt verion
#   # purchase_crypto = '₿ 1. Purchase Currency.'
#   # sell_bitcoin = '₿ 2. Sell Bitcoin.'
#   # sell_currency = '₿ 3. Sell Currency.'
#
#
#   #puts the attributes of the wallet with user id 1
#   # puts Wallet.find_by(user_id: 1).address
#
#   # puts
#   # 3 options "#{purchase_crypto}\n#{sell_currency}\n#{check_prices}\n"
#
#   # Chooses response based off user response
#   if response == '1' # Buy
#     puts 'Now taking you to the marketplace...'
#     sleep(0.5)
#     puts "..."
#     sleep(1)
#
#     #Create class method for coin 1 to be accessed by other methods
#     # @@coin_1 = Currency.create(price: 3932, name: "Bitcoin", symbol: "BTC")
#
#     def display_bitcoin_price_and_prompt
#       puts "The current USD exchange rate of Bitcoin (#{@btc.symbol}) is $#{@btc.price}0/#{@btc.symbol}.\nHow much would you like to purchase?"
#       # puts "How much would you like to purchase?"
#       quantity = gets.chomp.to_i
#     end
#     display_bitcoin_price_and_prompt
#
#     # def quantity_btc
#     #   puts "How much would you like to purchase?"
#     #   quantity = gets.chomp.to_i
#     # end
#
#     def prompt_user_btc
#       puts "Your total will be $#{total}0 for #{quantity_btc}BTC. Would you like to continue? Press Y for 'YES' or N for 'NO'. (Not case sensitive)"
#       answer = gets.chomp.capitalize
#       if anwser !== 'y'
#         sleep(0.5)
#         puts "Sorry we couldn't sell you anything today!"
#         sleep(0.5)
#         puts "Bye!"
#       else
#         sleep(1)
#         puts "Processing your order..."
#         3.times do sleep(0.5)
#         puts "..."
#       end
#     end
#     prompt_user_btc
#
#     def can_user_afford
#
#
#     end
#
#
#
#     #       sleep(1)
#     #       updated_total = @@user.balance - total
#     #       @@user.update(balance: updated_total)
#     #       puts "Your new account balance is now $#{@@user.balance}0. Thank you for your business!"
#     #     end
#     #
#     # end
#
#     def add_bitcoin_to_user
#       total = quantity_btc * @btc.price
#       total
#       puts "Your total will be $#{total}0 for #{quantity_btc}BTC. Would you like to continue? Press Y for 'YES' or N for 'NO'. (Not case sensitive)"
#       answer = gets.chomp.capitalize
#       if answer == 'Y'
#         if total > @@user.balance
#           puts "Sorry, you currently do not have a high enough balance to complete this order. Please make a deposit into your account to continue with this transaction."
#         else
#         sleep(1)
#         puts "Processing your order..."
#         3.times do sleep(0.5)
#         puts "..."
#       end
#         sleep(1)
#         updated_total = @@user.balance - total
#         @@user.update(balance: updated_total)
#         puts "Your new account balance is now $#{@@user.balance}0. Thank you for your business!"
#       end
#
#       else
#         sleep(0.5)
#         puts "Sorry we couldn't sell you anything today!"
#         sleep(0.5)
#         puts "Bye!"
#       end
#     end
# add_bitcoin_to_user
#
#     # puts "Current balance: #{user.balance}"
#     # def user_balance
#     #   user.balance
#     # end
#
#     # To Do
#     def create_and_display_coins
#
#     end
#
#     # puts Currency.first.price
#     # puts Currency.all
#
#     # puts "#{coin_1}\n#{coin_2}\n#{coin_3}"
#   elsif response == '2' #eth
#     puts 'Now taking you to the marketplace...'
#     sleep(0.5)
#     puts "..."
#     sleep(1)
#
#     def create_eth
#       # @@coin_2 = Currency.create(price: 134, name: "Ethereum", symbol: "ETH")
#       # puts "#{coin_1.price}, #{coin_1.name}, #{coin_1.symbol}"
#     end
#     create_eth
#
#     def display_eth_price
#       # coin_1 = Currency.create(price: 3932, name: "Bitcoin", symbol: "BTC")
#       puts "The current USD exchange rate of Ethereum (#{@eth.symbol}) is $#{@eth.price}0/#{@eth.symbol}."
#     end
#     display_eth_price
#
#     def quantity_eth
#       puts "How much would you like to purchase?"
#       quantity = gets.chomp.to_i
#     end
#
#     def add_eth_to_user
#       total = quantity_eth * @eth.price
#       total
#       puts "Your total will be $#{total}0 for #{quantity_eth}ETH. Would you like to continue? Press Y for 'YES' or N for 'NO'. (Not case sensitive)"
#       answer = gets.chomp.capitalize
#       if answer == 'Y'
#         if total > @@user.balance
#           puts "Sorry, you currently do not have a high enough balance to complete this order. Please make a deposit into your account to continue with this transaction."
#         else
#         sleep(1)
#         puts "Processing your order..."
#         3.times do sleep(0.5)
#         puts "..."
#       end
#         sleep(1)
#         updated_total = @@user.balance - total
#         @@user.update(balance: updated_total)
#         puts "Your new account balance is now $#{@@user.balance}0. Thank you for your business!"
#         # @@user.update(balance: updated_total)
#          # and #{quantity_eth}#{@eth.symbol}
#
#       end
#
#       else
#         sleep(0.5)
#         puts "Sorry we couldn't sell you anything today!"
#         sleep(0.5)
#         puts "Bye!"
#       end
#     end
# add_eth_to_user
#
#   elsif response == '3'
#     puts 'Now taking you to the marketplace...'
#     sleep(1)
#
#     puts "You have X inventory. The average exchange rate is X"
#     puts "#{@eth_quantity}"
#
#
#
#
#
#     # Sell
#     puts "Current Balance:"
#     puts 'How much would you like to sell?'
#   elsif response == '4' # Check prices
#     puts 'Now taking you to the marketplace...'
#     sleep(1)
#
#     puts "You have X inventory. The average exchange rate is X"
#
#
#
#
#
#     # Sell
#     puts "Current Balance:"
#     puts 'How much would you like to sell?'
#
#
#     # puts show faker hash + price
#   elsif response == '5'
#     sleep(1)
#     puts "Checking prices..."
#     puts "The current price of #{@btc.name} is $#{@btc.price}0.\nThe current price of #{@eth.name} is $#{@eth.price}0."
#
#
#
#   else # Check prices
#
#   end
#   end
#
#
# end
#
#
# # welcome
# # cli = CommandLineInterface.create
# # CommandLineInterface.welcome
