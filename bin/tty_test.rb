require_relative '../config/environment'
require "colorize"

ActiveRecord::Base.logger = nil

prompt = TTY::Prompt.new
system "clear"

system "rake db:migrate"
system "clear"

#puts String.color_samples

def heading(string)
  puts "                            ".colorize(color: :light_white, background: :green)
  puts "        #{string}        ".colorize(color: :light_white, background: :green)
  puts "                            ".colorize(color: :light_white, background: :green)
end

def format_price(price)
  if price.to_s.split(".")[1].length == 1
    price = price.to_s + "0"
  else
    price = price.round(2).to_s
  end
  price
end

heading("   Welcome! ")
puts ""
puts "PLANTMEDS"
puts ""

if User.all.count == 0
  #User.connection
  puts "You are our first user! Make a username".blue
  select = "signup"
else
  select = prompt.select("Would you like to...".cyan, %w(login signup exit))
end

if select == "signup"
  username = prompt.ask('username:'.magenta)
  password = prompt.mask('password:'.magenta)
  user = User.create(username: username, password: password)
  system "clear"
  heading("  PLANTMEDS ")
elsif select == "exit"
  system "clear"
  exit
else
  user = prompt.select("User:".magenta, User.tty_hash)
  password = prompt.mask('password:'.magenta)
  while password != user.password
    puts "Invalid password. Please try again.".blue
    password = prompt.mask('password: '.magenta)
  end
  system "clear"
  heading("  PLANTMEDS ")
end

while select != 4
#  system "clear"
  select = prompt.select("Would you like to...".cyan, {
      "select from strains" => 1, "select from dispensaries" => 2, "view cart" => 3, "exit app" => 4})
  system "clear"
  if select == 1
    if Strain.all.count == 0
      heading("  PLANTMEDS ")
      puts "There are no strains available currently. Check our dispensaries page!".magenta
    else
      heading("   STRAINS  ")
      strain = prompt.select("Strains".cyan, Strain.class_hash, per_page: 20)
      strain.info
      boolean = prompt.select('Would you like this strain?'.cyan, {yes: true, no: false})
      if DispensaryInventory.where(strain_id: strain.id).count == 0
        puts "#{strain.name} is currently unavailable.".red
        puts "\n"
      elsif boolean == true
        dispensaries = strain.dispensaries
        selection = prompt.select('Available at:', strain.locations)
        CartItem.create(user_id: user.id, dispensary_inventory_id: selection.id)
        puts ""
        puts "#{selection.strain.name} from #{selection.dispensary.name} has been added to your cart!".magenta
        puts ""
      end
    end
  elsif select == 2
    if Dispensary.all.count == 0
      heading("  PLANTMEDS ")
      puts "There are no dispensaries currently".magenta
      prompt.select("For seeds", "click here")
      system "rake db:seed"
    else
      heading("DISPENSARIES")
      dispensary = prompt.select("Dispensaries".cyan, Dispensary.class_hash)
      puts ""
      print " All strains are".colorize(color: :blue, background: :cyan)
      print " $#{format_price(dispensary.pricing)} ".colorize(color: :red, background: :cyan)
      puts "for 1/8 oz.".colorize(color: :blue, background: :cyan)
      puts ""
      selection = prompt.select('Select a strain:'.cyan, dispensary.inventory)
      selection.strain.info
      boolean = prompt.select('Would you like this strain?'.cyan, {yes: true, no: false})
      if boolean == true
    #    user.add_item_to_cart(selection)
        CartItem.create(user_id: user.id, dispensary_inventory_id: selection.id)
        puts ""
        print "#{selection.strain.name} "
        print "from".magenta
        print "#{selection.dispensary.name}"
        puts "has been added to your cart!".magenta
        puts ""
      end
    end
  elsif select == 3
    if Strain.all.count == 0 || user.cart.empty?
      heading("  YOUR CART ")
      puts "Your cart is empty.".red
    else
      heading("  YOUR CART ")
      user.cart_display
      select = prompt.select("Would you like to...".cyan, {
          "continue shopping" => 1, "checkout" => 2, "exit app" => 3})
      if select == 2
        user.empty_cart
        system "clear"
        heading("  PLANTMEDS ")
        puts ""
        puts "Thank you for shopping with us!".magenta
        puts ""
      elsif select == 3
        system"clear"
        exit
      end
    end
  end
end

#p Strain.find_by(name: strain).name

#binding.pry
0
