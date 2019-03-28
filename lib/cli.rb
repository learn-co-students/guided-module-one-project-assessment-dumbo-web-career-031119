require 'pry'
class CommandLineInterface


  def welcome
    Currency.destroy_all
    Wallet.destroy_all
    system "clear"
    puts "
    _    _ _____ _     _____ ________  ___ _____
    | |  | |  ___| |   /  __ \  _  |  \/  ||  ___|
    | |  | | |__ | |   | /  \/ | | | .  . || |__
    | |/\| |  __|| |   | |   | | | | |\/| ||  __|
    \  /\  / |___| |___| \__/\ \_/ / |  | || |___
    \/  \/\____/\_____/\____/\___/\_|  |_/\____/

    "

    def create_user
      @@user = User.create(username: "#{@name}", password: @pass, balance: 100000, btc_quant: 0, eth_quant: 0)
    end


    # Intro message
    def initial_prompt
      puts 'If you do not already have an account a new one will be created for you with the information given below.'
      puts 'Please enter a username below to continue:'
      @name = gets.chomp.capitalize
      puts 'Please enter a password below to continue:'
      @pass = gets.chomp

      # Search database to check if user info exists
      @@user = User.find_by(username: @name, password: @pass)
      # If they do not (search returns nil) then a new account is made with info
      if @@user == nil
        create_user
        puts "We have successfully created your account. Enjoy!"
      else
        # has_account = User.where(user_username: @name)
        # If they do exist it connects to that account
        puts "You have logged in. Enjoy!"
      end
      @@user
    end
    initial_prompt



    def get_user_balance
      user_balance = User.find_by(balance: 1).address

    end


    def create_currency
      # Currency.destroy_all
      # @@all = []
      @btc = Currency.new(price: 4025, name: "Bitcoin", symbol: "BTC")
      @eth = Currency.new(price: 138, name: "Ethereum", symbol: "ETH")
    end
    create_currency



    #############

    # Create user only when needed
    ### Variables


    test = true
    while test
      puts "Welcome, #{@@user.username}! Your current balance is: $#{@@user.balance}0. What would you like to do today?"
      # Welcomes the user by name
      purchase_bitcoin = '₿ 1. Purchase Bitcoin.'
      purchase_ethereum = '₿ 2. Purchase Ethereum.'
      sell_bitcoin = '₿ 3. Sell Bitcoin.'
      sell_ethereum = '₿ 4. Sell Ethereum.'


      check_prices = '₿ 5. Check prices.'
      #gives options

      #puts the attributes of the wallet with user id 1
      # puts Wallet.find_by(user_id: 1).address

      # puts

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
            end
          else
            sleep(0.5)
            puts "Sorry we couldn't sell you anything today!"
            sleep(0.5)
            puts "Bye!"
          end
        end
        add_bitcoin_to_user

      elsif response == '2' #eth
        puts 'Now taking you to the marketplace...'
        sleep(0.5)
        puts "..."
        sleep(1)


        def display_eth_price
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
        ### Working
      elsif response == '3'
        puts 'Now taking you to the marketplace...'
        sleep(0.5)
        puts "..."
        sleep(1)

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


        # Sell ETH
        ### Working
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

        # Reference and display coin prices
      elsif response == '5'
        sleep(1)
        puts "Checking prices..."
        puts "\n\n\nThe current price of #{@btc.name} is $#{@btc.price}0.\nThe current price of #{@eth.name} is $#{@eth.price}0.\n\n\n"

      else
        test = false
      end
    end
  end
end






################## Tests




####################
#
# def login
#   person = nil
#   while person == nil
#     puts "Welcome to the login screen."
#     puts "Username: "
#     username = gets.chomp
#     puts "Password: "
#     pass = gets.chomp
#
#     person = User.find_by(username: username, password: pass)
#     if person == nil
#       puts "Your username or password is incorrect. Please try again."
#     else
#       puts "Welcome, #{person.username}! Your current balance is: $#{person.balance}0. What would you like to do today?"
#     end
#   end
# end



#
# def signup
#   puts "Please enter your username and password below to continue."
#   # puts "If you do not have an account, enter your information below to continue:"
#   # puts "Username: "
#   # username = gets.chomp
#   # puts "Password: "
#   # pass = gets.chomp
#   person = User.find_by(username: username, password: pass)
#     if person == nil
#       puts "Your username or password is incorrect. Please try again."
#     else
#       puts "Welcome, #{person.username}! Your current balance is: $#{person.balance}0. What would you like to do today?"
#   # @name = gets.chomp.capitalize
#   # puts "Please enter your password below to continue:"
#   # @password = gets.chomp
#   create_user
# end
# end
# signup



#################
