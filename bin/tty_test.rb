require_relative '../config/environment'
ActiveRecord::Base.logger = nil

prompt = TTY::Prompt.new
system "clear"

puts "Welcome!"
select = prompt.select("Would you like to...", %w(login signup))

cart = []

if select == "signup"
  username = prompt.ask('username:')
  password = prompt.mask('password:')
  user = User.create(username: username, password: password)
else
  user = prompt.select("Users", User.tty_hash)
  password = prompt.mask('password: ')
  while password != user.password
    puts "Invalid password. Please try again."
    password = prompt.mask('password: ')
  end
end

while select != 4
  select = prompt.select("Would you like to...", {
      "select from strains" => 1, "select from dispensaries" => 2, "view cart" => 3, "exit app" => 4})
  system "clear"
  if select == 1
    strain = prompt.select("Strains", Strain.class_hash)
    strain.info
    select = prompt.select('Would you like this strain?', {yes: 5, no: nil})
    dispensaries = strain.dispensaries
    selection = prompt.select('Available at:', dispensaries.tty_choices(strain))
    CartItem.create(user_id: user.id, dispensary_inventory_id: selection.id)
    "#{strain.name} from #{selection.dispensary.name} has been added to your cart!"
  elsif select == 2
    dispensary = prompt.select("Dispensaries", Dispensary.class_hash)
    #Dispensary.find_by(name: dispensary.name).info
    selection = prompt.select('Select a strain:', dispensary.inventory)
    CartItem.create(user_id: user.id, dispensary_inventory_id: selection.id)
  elsif select == 3
    user.cart
  end
end

#p Strain.find_by(name: strain).name

#binding.pry
0
