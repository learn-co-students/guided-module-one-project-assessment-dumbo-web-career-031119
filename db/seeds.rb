
User.destroy_all
Currency.destroy_all
Wallet.destroy_all

user_1 = User.create(name: "Terence", password: "pass", balance: 24993.3)
wallet_1 = Wallet.create(user_id: 1, currency_id: 1, balance: 1000)

# dumbo = Animal.create(name: "Dumbo")
# clifford = Animal.create(name: "Clifford")
# Animal.create(name: "Willie")
# Animal.create(name: "Harambe")
#
# bronx = Zoo.create(name: "Bronx Zoo")
# prosp = Zoo.create(name: "Prospect Park Zoo")
# Zoo.create(name: "Brookfield Zoo")
# Zoo.create(name: "Lincoln Park Zoo")
# Zoo.create(name: "San Diego Zoo")
#
#
# Escape.create(animal_id: clifford.id,  zoo_id: Zoo.find_by(name: "Brookfield Zoo").id)
