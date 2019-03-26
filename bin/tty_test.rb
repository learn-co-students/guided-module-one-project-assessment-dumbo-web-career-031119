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
end

while select != 3
  select = prompt.select("Would you like to select from a list of...", {
      strains: 1, dispensaries: 2, "exit app" => 3})
  system "clear"
  if select == 1
    strain = prompt.select("Strains", Strain.class_hash)
    strain.info
    y_or_n = prompt.yes?('Would you like this strain?') # y returns true
   if y_or_n
     dispensaries = strain.dispensaries
     selection = prompt.select('Available at:', dispensaries.tty_choices(strain))
     purchase = CartItem.create(user_id: user.id, dispensary_inventory_id: selection.id)
     select = prompt.select("#{strain.name} from #{selection.dispensary.name} has been added to your cart!", {"view cart" => 4 , exit: 3})
   else
     select = 1
   end
  elsif select == 2
    dispensary = prompt.select("Dispensaries", Dispensary.class_hash)
    #Dispensary.find_by(name: dispensary.name).info
     dispensary.inventory
  elsif select == 4
    user.cart
  end
end

#p Strain.find_by(name: strain).name

#binding.pry
0
