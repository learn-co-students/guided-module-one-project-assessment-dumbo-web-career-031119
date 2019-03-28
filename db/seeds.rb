
User.destroy_all
Currency.destroy_all
Wallet.destroy_all

## Users

user = User.create(username: Faker::Name.unique.name, password: "#{Faker::Creature::Cat.unique.name.downcase}#{rand(1955..1973)}", balance: rand(10000..25000.1))

user_2 = User.create(username: Faker::FunnyName.unique.two_word_name, password: "#{Faker::Creature::Cat.unique.name.downcase}#{rand(72..97)}", balance: rand(5000..10000.4))

user_3 = User.create(username: Faker::Name.unique.name, password: "#{Faker::Creature::Cat.unique.name.downcase}#{rand(1995..2010)}", balance: rand(1000..5000))

user_4 = User.create(username: Faker::Name.unique.name, password: "#{Faker::Creature::Cat.unique.name.downcase}#{rand(85..93)}", balance: rand(500..1000.8))

user_5 = User.create(username: Faker::FunnyName.unique.four_word_name, password: "#{Faker::Creature::Cat.unique.name.downcase}#{rand(2003..2019)}", balance: rand(100..750))

## Currency

# coin_1 = Currency.create(price: 4025, name: "Bitcoin", symbol: "BTC")
#
# coin_2 = Currency.create(price: 133.8, name: "Ethereum", symbol: "ETH")
#
# coin_3 = Currency.create(price: 58.55, name: "Litecoin", symbol: "LTC")
#
# coin_4 = Currency.create(price: 0.29, name: "Ripple", symbol: "XRP")
#
# coin_5 = Currency.create(price: 1.01, name: "Tether", symbol: "USDT")


## Wallets

# wallet_1 = Wallet.create(user_id: user.id, currency_id: coin_1.id, balance: user.balance, address: Faker::Blockchain::Bitcoin.address)
#
# wallet_2 = Wallet.create(user_id: user_2.id, currency_id: coin_2.id, balance: user_2.balance, address: Faker::Blockchain::Bitcoin.address)
#
# wallet_3 = Wallet.create(user_id: user_3.id, currency_id: coin_3.id, balance: user_3.balance, address: Faker::Blockchain::Bitcoin.address)
#
# wallet_4 = Wallet.create(user_id: user_4.id, currency_id: coin_4.id, balance: user_4.balance, address: Faker::Blockchain::Bitcoin.address)
#
# wallet_5 = Wallet.create(user_id: user_5.id, currency_id: coin_5.id, balance: user_5.balance, address: Faker::Blockchain::Bitcoin.address)
