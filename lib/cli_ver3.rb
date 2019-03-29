# class CommandLineInterface
#
#
# # Start program
# def welcome
#   Currency.destroy_all
#
#   system "clear"
#   puts "
#   #    _____ _____ ____ _____
#   #   |_   _| ____/ ___|_   _|
#   #     | | |  _| \___ \ | |
#   #     | | | |___ ___) || |
#   #     |_| |_____|____/ |_|
#   #
#   "
# end  ############
#
# # Prompts user to sign up or login
#   def intro_message
#     puts "Sign up or login (s for signup, l or login)"
#     answer = gets.chomp
#     if answer == "s"
#       signup
#     else
#       login
#     end
#   end
#
# # Prompts user to enter name and pass to signup
#   def signup
#     puts "Please sign up."
#     puts 'Please enter your name below to continue:'
#     @name = gets.chomp.capitalize
#     puts 'Please enter your password below to continue:'
#     @password = gets.chomp
#     create_user
#   end
#
#   def create_currency
#         # Currency.destroy_all
#         # @@all = []
#         @btc = Currency.new(price: 4025, name: "Bitcoin", symbol: "BTC")
#         @eth = Currency.new(price: 138, name: "Ethereum", symbol: "ETH")
#       end
#
# # Checks if login info is correct bu searching through database for matching username and pass
#   def login
#     person = nil
#     while person == nil
#       puts "Welcome to the login screen."
#       puts "Username: "
#       username = gets.chomp
#       puts "Password: "
#       pass = gets.chomp
#
#       person = User.find_by(username: username, password: pass)
#       if person == nil
#         puts "Your username or password is incorrect. Please try again."
#       else
#         puts "Welcome, #{person.username}! Your current balance is: $#{person.balance}0. What would you like to do today?"
#         # Add all method calls after successful login
#         create_currency
#         create_user
#         menu
#         quantity
#         # add_bitcoin_to_user
#         # purchase_quant_prompt
#         # add_eth
#         # display_bitcoin_price
#         # display_eth_price
#         # check_user_eth_quant
#
#       end
#     end
#   end
#
#   def self.menu
#     purchase_bitcoin = '₿ 1. Purchase Bitcoin.'
#     purchase_ethereum = '₿ 2. Purchase Ethereum.'
#     sell_bitcoin = '₿ 3. Sell Bitcoin.'
#     sell_ethereum = '₿ 4. Sell Ethereum.'
#     check_prices = '₿ 5. Check prices.'
#     puts "#{purchase_bitcoin}\n#{purchase_ethereum}\n#{sell_bitcoin}\n#{sell_ethereum}\n#{check_prices}\n"
#   # Gets users selection
#   # response = gets.chomp
#   # Chooses response based off user response
#   response = gets.chomp
#   if response == '1' # Buy
#     puts 'Now taking you to the marketplace...'
#     sleep(0.5)
#     puts "..."
#     sleep(1)
#
#     # display_bitcoin_price
#     display_eth_price
#
#     quantity
#     add_bitcoin_to_user
#   end
# end
# self.menu
#
#   # def display_bitcoin_price
#   #   # coin_1 = Currency.create(price: 3932, name: "Bitcoin", symbol: "BTC")
#   #   puts "The current USD exchange rate of Bitcoin (#{@btc.symbol}) is $#{@btc.price}0/#{@btc.symbol}."
#   # end
#   # def display_eth_price
#   #   # coin_1 = Currency.create(price: 3932, name: "Bitcoin", symbol: "BTC")
#   #   puts "The current USD exchange rate of Ethereum (#{@eth.symbol}) is $#{@eth.price}0/#{@eth.symbol}."
#   # end
#   # def quantity
#   #   puts "How much would you like to purchase?"
#   #   @quantity = gets.chomp.to_i
#   # end
#   # def check_user_eth_quant
#   #   amt = @@user.eth_quant
#   # end
#   # # check_user_eth_quant
#   #
#   # def add_eth
#   #   total = quantity * @eth.price
#   #   total
#   #   puts "Your total will be $#{total}0 for #{quantity}ETH. Would you like to continue? Press Y for 'YES' or N for 'NO'. (Not case sensitive)"
#   #   answer = gets.chomp.capitalize
#   #   if answer == 'Y'
#   #     if total > @@user.balance
#   #       puts "Sorry, you currently do not have a high enough balance to complete this order. Please make a deposit into your account to continue with this transaction."
#   #     else
#   #       updated_total = @@user.balance - total
#   #       @@user.update(balance: updated_total)
#   #       @@user.update(eth_quant: quantity)
#   #       sleep(1)
#   #       puts "Processing your order..."
#   #       3.times do sleep(0.5)
#   #         puts "..."
#   #       end
#   #       sleep(1)
#   #
#   #       puts "Your new account balance is now $#{updated_total}0. Thank you for your business!"
#   #     end
#   #   else
#   #     sleep(0.5)
#   #     puts "Sorry we couldn't sell you anything today!"
#   #     sleep(0.5)
#   #     puts "Bye!"
#   #   end
#   # end
#
# end
