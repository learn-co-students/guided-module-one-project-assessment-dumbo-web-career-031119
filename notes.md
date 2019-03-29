
################## Cryptocurrency Portfolio/Ticker App ##################


# DONE

1. Greeting message
2. Prompt to login or register
3. Search user table to see if user is registered
4. If user is not registered, a new account is made for them using the given information (name and pass from prompt, default account balances all set to 0), and they then arrive at menu
5. If user is registered and enters correct login info, they arrive at the menu
6. Menu has 5 options :
    Buy Bitcoin
    Buy Ethereum
    Sell Bitcoin
    Sell Ethereum
    Check prices of both coins
7. To exit, user presses any key not shown as an option

All menu options.









# To do


1. Create table for users - DONE
2. Create class for User - DONE
3. Create table for wallets - DONE
4. Create class for Wallet - DONE
5. Create table for currency - DONE
6. Create class for Currency - DONE


# As a user, I want to be given options of different currencies. (Read)
#As a user, I want to be able to purchase the currency. (Create)
#As a user, I want to enter a restaurant and be given user reviews of that restaurant. (Read)
#As a user, I should be able to sell off bitcoin which updates in the database. (Update)
As a user, I want to be able to delete one of my restaurant reviews. (Delete)


# Models and Attributes

User attributes: username, password, balance

Wallet attributes: user_id, currency_id, balance, address

Currency attributes: symbolname, price

turn name user inputs into username, remove spaces, flatten(?), downcase, add number


### Faker commands

Faker::CryptoCoin.coin_name

Faker::CryptoCoin.acronym

Faker::CryptoCoin.coin_array[0..1] # Returns name and acronym

Faker::Blockchain::Bitcoin.address

Faker::Blockchain::Ethereum.address

#{Faker::Creature::Cat.unique.name}#{rand(10..20)}
# Makes password with cat name and a number between 10 and 20


# https://blockchain.info/ticker live prices

# https://blockchain.info/tobtc?currency=USD&value=500 #conversion, replace usd value=500 with variable


BTC Emoji = ₿


- TTY Prompt install
- Use faker
- Look into Binance API

#################### MVP Plan ######################

User class needs to be initialized with the attributes of username, password, and default account balance of $100,000 USD. When a user chooses the currency they would like to purchase, the amount will be subtracted from their balance, and a new column will be added displaying the updated USD balance as well as the new balance of the currency.

Platform class needs to be able to display a selection of popular currencies such as btc, eth, xrp, l, etc... with their current price shown below. When a user makes a trade or purchase, the database needs to be updated in both the user class and the currency class.

## Bonus

Currency class needs to be initialized with price, name, symbol.


User has many wallets

Wallets have one user

Wallets have one currency

Currency has many wallets

Wallets belong to currency


### Notes

1. The very first thing that will happen upon running the app will be clearing the users terminal so that it feels clean and uncluttered. I want there to be the feeling of entering a standalone application, rather than just simple input/output within a standard terminal.

2. I plan to use TTY Prompt to add a factor of user experience that would not be otherwise possible with the standard terminal interface.


### Classes


1. We will first need a User class. The User class will need to be initialized with a username, password, and a set amount of 'money.'

2. Attributes needed

Attributes that users may want to filter by could include trading volume, average price ranges, and types of coin such as stablecoin/altcoin/and ICO style coins. If a user does not input their preferences, the output will default to the top 5 or so coins. The info that will show for the specified coins can include such things as average price, 24hr trading volume, and daily percentage change.
Many users
Single platform connecting users with coins
Many Coins
