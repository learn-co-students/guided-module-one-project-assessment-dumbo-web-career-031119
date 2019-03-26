require_relative '../config/environment'
ActiveRecord::Base.logger = nil

prompt = TTY::Prompt.new
system "clear"

puts "Welcome!"

if User.all.count == 0
  #User.connection
  puts "You are our first user! Make a username"
  select = "signup"
else
  select = prompt.select("Would you like to...", %w(login signup))
end

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
    if Strain.all.count == 0
      #Strain.connection
      puts "There are no strains available"
    else
      strain = prompt.select("Strains", Strain.class_hash, per_page: 20)
      strain.info

      boolean = prompt.select('Would you like this strain?', {yes: true, no: false})
      if boolean == true
        dispensaries = strain.dispensaries
        selection = prompt.select('Available at:', strain.locations)
        CartItem.create(user_id: user.id, dispensary_inventory_id: selection.id)
        "#{strain.name} from #{selection.dispensary.name} has been added to your cart!"
      end
    end
  elsif select == 2
    if Dispensary.all.count == 0
      #Strain.connection
      puts "There are no dispensaries."
    else
      dispensary = prompt.select("Dispensaries", Dispensary.class_hash)
      selection = prompt.select('Select a strain:', dispensary.inventory)
      CartItem.create(user_id: user.id, dispensary_inventory_id: selection.id)
    end
  elsif select == 3
    if Strain.all.count == 0 || user.cart.empty?
      puts "Your cart is empty."
    else
      user.cart_items
    end
  end
end

#p Strain.find_by(name: strain).name

#binding.pry
0
