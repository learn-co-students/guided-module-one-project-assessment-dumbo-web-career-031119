# # require_relative '../config/environment'
# require 'pry'
# class CommandLineInterface
#
#
#   def welcome
#     Currency.destroy_all
#     # User.destroy_all
#     # Wallet.destroy_all
#
#     # Clear terminal at runtime
#     system "clear"
#     puts "
#     #    _____ _____ ____ _____
#     #   |_   _| ____/ ___|_   _|
#     #     | | |  _| \___ \ | |
#     #     | | | |___ ___) || |
#     #     |_| |_____|____/ |_|
#     #
#     "
#     # Intro message (Needs alteration)
#
#     def display_bitcoin_price
#       # coin_1 = Currency.create(price: 3932, name: "Bitcoin", symbol: "BTC")
#       puts "The current USD exchange rate of Bitcoin (#{@btc.symbol}) is $#{@btc.price}0/#{@btc.symbol}."
#     end
#     def display_eth_price
#       # coin_1 = Currency.create(price: 3932, name: "Bitcoin", symbol: "BTC")
#       puts "The current USD exchange rate of Ethereum (#{@eth.symbol}) is $#{@eth.price}0/#{@eth.symbol}."
#     end
#     def quantity
#       puts "How much would you like to purchase?"
#       @quantity = gets.chomp.to_i
#     end
#     def check_user_eth_quant
#       amt = @@user.eth_quant
#     end
#     # check_user_eth_quant
#
#     def add_eth
#       total = quantity * @eth.price
#       total
#       puts "Your total will be $#{total}0 for #{quantity}ETH. Would you like to continue? Press Y for 'YES' or N for 'NO'. (Not case sensitive)"
#       answer = gets.chomp.capitalize
#       if answer == 'Y'
#         if total > @@user.balance
#           puts "Sorry, you currently do not have a high enough balance to complete this order. Please make a deposit into your account to continue with this transaction."
#         else
#           updated_total = @@user.balance - total
#           @@user.update(balance: updated_total)
#           @@user.update(eth_quant: quantity)
#           sleep(1)
#           puts "Processing your order..."
#           3.times do sleep(0.5)
#             puts "..."
#           end
#           sleep(1)
#
#           puts "Your new account balance is now $#{updated_total}0. Thank you for your business!"
#         end
#       else
#         sleep(0.5)
#         puts "Sorry we couldn't sell you anything today!"
#         sleep(0.5)
#         puts "Bye!"
#       end
#     end
#     # add_eth
#
#
#
#     def intro_message
#       puts "Sign up or login (s for signup, l or login)"
#       answer = gets.chomp
#       if answer == "s"
#         signup
#       else
#         login
#       end
#     end
#     puts "after intro"
#     # puts "rgith before"
#     #     intro_message
#
#     def signup
#       puts "Please sign up."
#       puts 'Please enter your name below to continue:'
#       @name = gets.chomp.capitalize
#       puts 'Please enter your password below to continue:'
#       @password = gets.chomp
#       create_user
#     end
#
#     def add_bitcoin_to_user
#       total = quantity * @btc.price
#       total
#       puts "Your total will be $#{total}0 for #{quantity}BTC. Would you like to continue? Press Y for 'YES' or N for 'NO'. (Not case sensitive)"
#       answer = gets.chomp.capitalize
#       if answer == 'Y'
#         if total > @@user.balance
#           puts "Sorry, you currently do not have a high enough balance to complete this order. Please make a deposit into your account to continue with this transaction."
#         else
#           updated_total = @@user.balance - total
#           @@user.update(balance: updated_total)
#           @@user.update(btc_quant: quantity)
#           sleep(1)
#           puts "Processing your order..."
#           3.times do sleep(0.5)
#             puts "..."
#           end
#           sleep(1)
#           puts "Your new account balance is now $#{updated_total}0. Thank you for your business!"
#
#         end
#       else
#         sleep(0.5)
#         puts "Sorry we couldn't sell you anything today!"
#         sleep(0.5)
#         puts "Bye!"
#       end
#     end
#     # add_bitcoin_to_user
#
#     def purchase_quant_prompt
#       puts "How much would you like to purchase?"
#       quantity = gets.chomp.to_i
#     end
#
#     def check_user_btc_quant
#       amt = @@user.btc_quant
#     end
#     # Sell
#     def selling_btc
#       puts "Current Balance: #{check_user_btc_quant} #{@btc.symbol}\nAvg. Sale Price $#{@btc.price}0"
#       puts 'How much would you like to sell?'
#       @amt_to_sell = gets.chomp.to_i
#     end
#     def create_user
#       @@user = User.create(username: "#{@name}", password: "#{@password}", balance: 100000, btc_quant: 0, eth_quant: 0)
#     end
#
#
# ###################### Define within here
# puts "after signup"
#
#     # Initialize currency variables
#     def create_currency
#       # Currency.destroy_all
#       # @@all = []
#       @btc = Currency.new(price: 4025, name: "Bitcoin", symbol: "BTC")
#       @eth = Currency.new(price: 138, name: "Ethereum", symbol: "ETH")
#     end
#     # create_currency
# puts "greeting"
#     # greeting
# # puts "menu b"
#     def menu
#       purchase_bitcoin = '₿ 1. Purchase Bitcoin.'
#       purchase_ethereum = '₿ 2. Purchase Ethereum.'
#       sell_bitcoin = '₿ 3. Sell Bitcoin.'
#       sell_ethereum = '₿ 4. Sell Ethereum.'
#       check_prices = '₿ 5. Check prices.'
#       puts "#{purchase_bitcoin}\n#{purchase_ethereum}\n#{sell_bitcoin}\n#{sell_ethereum}\n#{check_prices}\n"
#     # Gets users selection
#     # response = gets.chomp
#     # Chooses response based off user response
#     response = gets.chomp
#     if response == '1' # Buy
#       puts 'Now taking you to the marketplace...'
#       sleep(0.5)
#       puts "..."
#       sleep(1)
#
#       # display_bitcoin_price
#       # display_eth_price
#
#       quantity
#       add_bitcoin_to_user
#     end
#   end
#     # menu
# puts "menu"
#
# #########################
#     def login
#       person = nil
#       while person == nil
#         puts "Welcome to the login screen."
#         puts "Username: "
#         username = gets.chomp
#         puts "Password: "
#         pass = gets.chomp
#
#         person = User.find_by(username: username, password: pass)
#         if person == nil
#           puts "Your username or password is incorrect. Please try again."
#         else
#           puts "Welcome, #{person.username}! Your current balance is: $#{person.balance}0. What would you like to do today?"
#           # Add all method calls after successful login
#           create_currency
#           create_user
#           menu
#           quantity
#           add_bitcoin_to_user
#           purchase_quant_prompt
#           add_eth
#           display_bitcoin_price
#           display_eth_price
#           check_user_eth_quant
#
#
#
#         end
#       end
#     end
#
#
#     # def create_user
#     #   @@user = User.create(username: "#{@name}", password: "#{@password}", balance: 100000, btc_quant: 0, eth_quant: 0)
#     # end
#
#
#     ###############
#
#     # To Do Maybe add password?
#     # puts 'Please enter a password:'
#     # pass = gets.chomp
#
#     # def self.all
#     #   @@all << self
#     # end
#     #
#     # puts @@all
#
#
#     ############### TESTS
#
#
#     def get_user_balance
#       user_balance = User.find_by(balance: 1).address
#     end
#
#
#
#
#     ### Variables
#     # def search_user
#     #   User.find_by(username: @name)
#     # end
#     # search_user
#
#   # def greeting
#   #   puts "Welcome, #{@@user.username}! Your current balance is: $#{@@user.balance}0. What would you like to do today?"
#   # end
#   # greeting
#     # Welcomes the user by name
#
#     # purchase_crypto = '₿ 1. Purchase Currency.'
#     # sell_bitcoin = '₿ 2. Sell Bitcoin.'
#     # sell_currency = '₿ 3. Sell Currency.'
#
#     #gives options
#
#     #puts the attributes of the wallet with user id 1
#     # puts Wallet.find_by(user_id: 1).address
#
#     # puts
#     # 3 options "#{purchase_crypto}\n#{sell_currency}\n#{check_prices}\n"
#     #5 options, including eth
#
#
#
#
#
#       #display_bitcoin_price
#
#
#
#     #
#     # elsif response == '2' #eth
#     #   puts 'Now taking you to the marketplace...'
#     #   sleep(0.5)
#     #   puts "..."
#     #   sleep(1)
#
#       def create_eth
#         # @@coin_2 = Currency.create(price: 134, name: "Ethereum", symbol: "ETH")
#         # puts "#{coin_1.price}, #{coin_1.name}, #{coin_1.symbol}"
#       end
#       create_eth
#
#       # def display_eth_price
#       #   # coin_1 = Currency.create(price: 3932, name: "Bitcoin", symbol: "BTC")
#       #   puts "The current USD exchange rate of Ethereum (#{@eth.symbol}) is $#{@eth.price}0/#{@eth.symbol}."
#       # end
#       # display_eth_price
#
#
#
#
#       # Sell BTC
#     # elsif response == '3'
#     #   puts 'Now taking you to the marketplace...'
#     #   sleep(0.5)
#     #   puts "..."
#     #   sleep(1)
#
#
#
#       # if @amt_to_sell > 0
#
#
#
#
#       # puts check_user_btc_quant
#       # puts "You currently have #{check_user_btc_quant} #{@btc.symbol}. The average exchange rate is X"
#
#
#       # Sell ETH
#     # elsif response == '4'
#     #   puts 'Now taking you to the marketplace...'
#     #   sleep(0.5)
#     #   puts "..."
#     #   sleep(1)
#
#       # def check_user_eth_quant
#       #   amt = @@user.eth_quant
#       # end
#       # check_user_eth_quant
#       # def check_eth
#     #   def selling_eth
#     #   puts "Current Balance: #{check_user_eth_quant} #{@eth.symbol}\nAvg. Sale Price $#{@eth.price}0"
#     #   puts 'How much would you like to sell?'
#     #   @amt_to_sell = gets.chomp.to_i
#     # end
#       # end
#       # check_eth
#
#     # elsif response == '5'
#     #   sleep(1)
#     #   puts "Checking prices..."
#     #   puts "The current price of #{@@coin_1.name} is $#{@@coin_1.price}0.\nThe current price of #{@@coin_2.name} is $#{@@coin_2.price}0."
#
#
#     end
# end
#
# # end
#
#
# # welcome
# # cli = CommandLineInterface.create
# # CommandLineInterface.welcome










#########################




# require_relative '../config/environment'
# require 'pry'
# class CommandLineInterface


  # def welcome
  #   Currency.destroy_all
  #   # User.destroy_all
  #   Wallet.destroy_all
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
  #   "
  #   # Intro message (Needs alteration)
  #
  #   # puts 'Please enter your name below to continue:'
  #   # @name = gets.chomp.capitalize
  #   # To Do Maybe add password?
  #   # puts 'Please enter a password:'
  #   # pass = gets.chomp
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
  #       end
  #     end
  #   end
  #
  #
  #     def intro_message
  #       puts "Sign up or login (s for signup, l or login)"
  #       answer = gets.chomp
  #       if answer == "s"
  #         signup
  #       else
  #         login
  #       end
  #     end
  #   intro_message
  #   def create_user
  #     @@user = User.create(username: "#{@name}", password: "pass", balance: 100000, btc_quant: 0, eth_quant: 0)
  #   end
  #   create_user
  #   def signup
  #     puts "Please enter your username and password below to continue."
  #     # puts "If you do not have an account, enter your information below to continue:"
  #     # puts "Username: "
  #     # username = gets.chomp
  #     # puts "Password: "
  #     # pass = gets.chomp
  #     person = User.find_by(username: username, password: pass)
  #       if person == nil
  #         puts "Your username or password is incorrect. Please try again."
  #       else
  #         puts "Welcome, #{person.username}! Your current balance is: $#{person.balance}0. What would you like to do today?"
  #     # @name = gets.chomp.capitalize
  #     # puts "Please enter your password below to continue:"
  #     # @password = gets.chomp
  #     create_user
  #   end
  #   end
  #   signup
  #   intro_message





  require 'pry'
  class CommandLineInterface


    def welcome
      Currency.destroy_all
      # User.destroy_all
      Wallet.destroy_all

      # Clear terminal at runtime
      system "clear"
      puts "
      #    _____ _____ ____ _____
      #   |_   _| ____/ ___|_   _|
      #     | | |  _| \___ \ | |
      #     | | | |___ ___) || |
      #     |_| |_____|____/ |_|
      #
      "
      # Intro message (Needs alteration)
      ##########################
      puts 'Please enter a username below to continue:'
      @name = gets.chomp.capitalize
      #######################
      # To Do Maybe add password?
      # puts 'Please enter a password:'
      # pass = gets.chomp


      ############### TESTS


      def get_user_balance
        user_balance = User.find_by(balance: 1).address

      end

      #   def get_user_balance
      #   # Updtate the title "Awesome Flick" to "Even Awesomer Flick", save it, then return it
      #   # User.create(balance: 100000)
      #   user_balance = Movie.find_by(balance: *)
      #   movie.update(balance: "Even Awesomer Flick")
      #   movie.save
      # end

      # def can_be_instantiated_and_then_saved
      #   # movie = __
      #   user = User.new
      #   user.balance = 100000
      #   user.save
      # end
      def create_currency
        # Currency.destroy_all
        # @@all = []
        @btc = Currency.new(price: 4025, name: "Bitcoin", symbol: "BTC")
        @eth = Currency.new(price: 138, name: "Ethereum", symbol: "ETH")
      end
      create_currency
      # puts @btc.name
      # puts @btc.price
      # puts @btc.symbol
      # puts @btc.all


      #############

      # Create user only when needed
      ### Variables
      def create_user
        @@user = User.create(username: "#{@name}", password: "pass", balance: 100000, btc_quant: 0, eth_quant: 0)
      end
      create_user

      test = true
      while test
      puts "Welcome, #{@@user.username}! Your current balance is: $#{@@user.balance}0. What would you like to do today?"
      # Welcomes the user by name
      purchase_bitcoin = '₿ 1. Purchase Bitcoin.'
      purchase_ethereum = '₿ 2. Purchase Ethereum.'
      # purchase_crypto = '₿ 1. Purchase Currency.'
      # sell_bitcoin = '₿ 2. Sell Bitcoin.'
      # sell_currency = '₿ 3. Sell Currency.'
      sell_bitcoin = '₿ 3. Sell Bitcoin.'
      sell_ethereum = '₿ 4. Sell Ethereum.'


      check_prices = '₿ 5. Check prices.'
      #gives options

      #puts the attributes of the wallet with user id 1
      # puts Wallet.find_by(user_id: 1).address

      puts
      # 3 options "#{purchase_crypto}\n#{sell_currency}\n#{check_prices}\n"
      #5 options, including eth
      puts "#{purchase_bitcoin}\n#{purchase_ethereum}\n#{sell_bitcoin}\n#{sell_ethereum}\n#{check_prices}\n\nPress any other key to exit".chomp
      # Gets users selection
      response = gets.chomp
      # Chooses response based off user response
      if response == '1' # Buy
        puts 'Now taking you to the marketplace...'
        sleep(0.5)
        puts "..."
        sleep(1)


        def display_bitcoin_price
          # coin_1 = Currency.create(price: 3932, name: "Bitcoin", symbol: "BTC")
          puts "The current USD exchange rate of Bitcoin (#{@btc.symbol}) is $#{@btc.price}0/#{@btc.symbol}."
        end
        display_bitcoin_price
        puts "How much would you like to purchase?"
        @quantity_amt = gets.chomp.to_i

        def add_bitcoin_to_user
          total = @quantity_amt * @btc.price
          total
          puts "Your total will be $#{total}0 for #{@quantity_amt}BTC. Would you like to continue? Press Y for 'YES' or N for 'NO'. (Not case sensitive)"
          answer = gets.chomp.capitalize
          if answer == 'Y'
            if total > @@user.balance
              puts "Sorry, you currently do not have a high enough balance to complete this order. Please make a deposit into your account to continue with this transaction."
            else
              updated_total = @@user.balance - total
              @@user.update(balance: updated_total)
              @@user.update(btc_quant: @quantity_amt)
              sleep(1)
              puts "Processing your order..."
              3.times do sleep(0.5)
                puts "..."
              end
              sleep(1)

              puts "\n\n\nYou now have #{@@user.btc_quant}#{@btc.symbol}. Your new account balance is now $#{updated_total}0. Thank you for your business!\n\n\n"



              #       def can_update_using_update_method
              #   User.create(title: "Wat?")
              #   user = User.find_by(id: user_id)
              #   user.update(balance: "#{updated_total}")
              #   # Movie.update(title: "Wat, huh?")
              # end

            end
          else
            sleep(0.5)
            puts "Sorry we couldn't sell you anything today!"
            sleep(0.5)
            puts "Bye!"
          end
        end

        add_bitcoin_to_user
        # puts "Current balance: #{user.balance}"
        # def user_balance
        #   user.balance
        # end

        # To Do
        # def create_and_display_coins
        #
        # end

        # puts Currency.first.price
        # puts Currency.all

        # puts "#{coin_1}\n#{coin_2}\n#{coin_3}"
      elsif response == '2' #eth
        puts 'Now taking you to the marketplace...'
        sleep(0.5)
        puts "..."
        sleep(1)

        # def create_eth
        #   # @@coin_2 = Currency.create(price: 134, name: "Ethereum", symbol: "ETH")
        #   # puts "#{coin_1.price}, #{coin_1.name}, #{coin_1.symbol}"
        # end
        # create_eth

        def display_eth_price
          # coin_1 = Currency.create(price: 3932, name: "Bitcoin", symbol: "BTC")
          puts "The current USD exchange rate of Ethereum (#{@eth.symbol}) is $#{@eth.price}0/#{@eth.symbol}."
        end
        display_eth_price
        puts "How much would you like to purchase?"
        @quantity_amt = gets.chomp.to_i

        def add_eth
          total = @quantity_amt * @eth.price
          total
          puts "Your total will be $#{total}0 for #{@quantity_amt}ETH. Would you like to continue? Press Y for 'YES' or N for 'NO'. (Not case sensitive)"
          answer = gets.chomp.capitalize
          if answer == 'Y'
            if total > @@user.balance
              puts "Sorry, you currently do not have a high enough balance to complete this order. Please make a deposit into your account to continue with this transaction."
            else
              updated_total = @@user.balance - total
              @@user.update(balance: updated_total)
              @@user.update(eth_quant: @quantity_amt)
              sleep(1)
              puts "Processing your order..."
              3.times do sleep(0.5)
                puts "..."
              end
              sleep(1)

              puts "\n\n\nYou now have #{@@user.eth_quant}#{@eth.symbol}. Your new account balance is now $#{updated_total}0. Thank you for your business!\n\n\n"
            end
          else
            sleep(0.5)
            puts "Sorry we couldn't sell you anything today!"
            sleep(0.5)
            puts "Bye!"
          end
        end

        add_eth

        # Sell BTC
        ###Working
      elsif response == '3'
        puts 'Now taking you to the marketplace...'
        sleep(0.5)
        puts "..."
        sleep(1)

        ######Working end

        ####################


        def display_bitcoin_price_for_sale
          puts "The current USD exchange rate of Bitcoin (#{@btc.symbol}) is $#{@btc.price}0/#{@btc.symbol}."
        end
        display_bitcoin_price_for_sale
        puts "You have #{@@user.btc_quant}#{@btc.symbol} available. How much would you like to sell?"
        @quantity_amt = gets.chomp.to_i

        def remove_bitcoin_from_user
          total = @quantity_amt * @btc.price
          total
          puts "The total amount credited to you will be $#{total}0 for #{@quantity_amt}BTC. Would you like to continue? Press Y for 'YES' or N for 'NO'. (Not case sensitive)"
          answer = gets.chomp.capitalize
          if answer == 'Y'
            # if @@user.balance > total
            # if total > @@user.btc_quant
            if @@user.btc_quant < @quantity_amt
              # binding.pry
              puts "Sorry, you currently do not have a high enough balance to complete this order. Please make a deposit into your account to continue with this transaction."
            else
              updated_total = @@user.balance + total
              @@user.update(balance: updated_total)
              @@user.update(btc_quant: @@user.btc_quant - @quantity_amt)

              sleep(1)
              puts "Processing your order..."
              3.times do sleep(0.5)
                puts "..."
              end
              sleep(1)

              puts "\n\n\nYou now have #{@@user.btc_quant}#{@btc.symbol}. Your new account balance is $#{updated_total}0. Thank you for your business!\n\n\n"
            end
          else
            sleep(0.5)
            puts "Sorry we couldn't sell you anything today!"
            sleep(0.5)
            puts "Bye!"
          end
        end
        remove_bitcoin_from_user




        ######################
##Working
      #   def check_user_btc_quant
      #     amt = @@user.btc_quant
      #
      #   # Sell
      #   puts "Current Balance: #{check_user_btc_quant} #{@btc.symbol}\nAvg. Sale Price $#{@btc.price}0"
      #   puts 'How much would you like to sell?'
      #   gets.chomp
      # end
      # check_user_btc_quant
      ####Working end

        # puts check_user_btc_quant
        # puts "You currently have #{check_user_btc_quant} #{@btc.symbol}. The average exchange rate is X"


        # Sell ETH
      elsif response == '4'
        puts 'Now taking you to the marketplace...'
        sleep(0.5)
        puts "..."
        sleep(1)

        def display_eth_price_for_sale
          puts "The current USD exchange rate of Ethereum (#{@eth.symbol}) is $#{@eth.price}0/#{@eth.symbol}."
        end
        display_eth_price_for_sale
        puts "You have #{@@user.eth_quant}#{@eth.symbol} available. How much would you like to sell?"
        @quantity_amt = gets.chomp.to_i

        def remove_eth_from_user
          total = @quantity_amt * @eth.price
          total
          puts "The total amount credited to you will be $#{total}0 for #{@quantity_amt}ETH. Would you like to continue? Press Y for 'YES' or N for 'NO'. (Not case sensitive)"
          answer = gets.chomp.capitalize
          if answer == 'Y'
            # if @@user.balance > total
            # if total > @@user.btc_quant
            if @@user.eth_quant < @quantity_amt
              # binding.pry
              puts "Sorry, you currently do not have a high enough balance to complete this order. Please make a deposit into your account to continue with this transaction."
            else
              updated_total = @@user.balance + total
              @@user.update(balance: updated_total)
              @@user.update(eth_quant: @@user.eth_quant - @quantity_amt)

              sleep(1)
              puts "Processing your order..."
              3.times do sleep(0.5)
                puts "..."
              end
              sleep(1)

              puts "\n\n\nYou now have #{@@user.eth_quant}#{@eth.symbol}. Your new account balance is $#{updated_total}0. Thank you for your business!\n\n\n"
            end
          else
            sleep(0.5)
            puts "Sorry we couldn't sell you anything today!"
            sleep(0.5)
            puts "Bye!"
          end
        end
        remove_eth_from_user

        ##############################

      elsif response == '5'
        sleep(1)
        puts "Checking prices..."
        puts "\n\n\nThe current price of #{@btc.name} is $#{@btc.price}0.\nThe current price of #{@eth.name} is $#{@eth.price}0.\n\n\n"


      # Check prices
      else
        test = false
      end
    end
    end
  end


# welcome
# cli = CommandLineInterface.create
# CommandLineInterface.welcome
