# require_relative '../config/environment'

# class CommandLineInterface



def welcome

  # coin_1 = Currency.create(price: 3929, name: "Bitcoin", symbol: "BTC")
  #
  # coin_2 = Currency.create(price: 133.8, name: "Ethereum", symbol: "ETH")
  #
  # coin_3 = Currency.create(price: 58.55, name: "Litecoin", symbol: "LTC")

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
  puts 'Please enter your name below to continue:'
  name = gets.chomp.capitalize
  puts "Welcome, #{name}! What would you like to do today?"
  # Welcomes the user by name
  purchase_bitcoin = '₿ 1. Purchase Bitcoin.'
  sell_bitcoin = '₿ 2. Sell Bitcoin.'
  check_prices = '₿ 3. Check prices.'
  #gives options

  puts "#{purchase_bitcoin}\n#{sell_bitcoin}\n#{check_prices}\n"
  # Gets users selection
  response = gets.chomp
  # Chooses response based off user response
  if response == '1' # Buy
    puts 'Now taking you to the marketplace...'
    sleep(1)
    puts 'test'
    # puts Currency.all
    puts "#{coin_1}\n#{coin_2}\n#{coin_3}"

  elsif response == '2' # Sell
    puts "Current Balance:"
    puts 'How much would you like to sell?'
  elsif response == '3' # Check prices
    puts 'Checking prices...'
    # puts show faker hash + price
  else # Check prices

  end
  end


# end

welcome
# cli = CommandLineInterface.create
# CommandLineInterface.welcome
