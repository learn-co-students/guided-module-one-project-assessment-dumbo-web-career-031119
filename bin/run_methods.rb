def clear
  system "clear"
end

def prompt
  TTY::Prompt.new
end

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

def first_user
  # heading("   Welcome! ")
  # puts ""
  # puts "PLANTMEDS"
  # puts ""
  puts "You are our first user! Make a username".blue
  signup
end

def signup
  username = prompt.ask('username:'.magenta)
  password = prompt.mask('password:'.magenta, mask: "🌿")
  if ActiveRecord::Base.connection.table_exists? 'users'
    user = User.create(username: username, password: password)
    clear
    return user
  end
end

def login_page
  prompt
  selection = prompt.select("Would you like to...".cyan, %w(login signup exit))
  if selection == "signup"
    user = signup
    clear
    heading("  PLANTMEDS ")
  elsif selection == "exit"
    clear
    exit
  else
    user = prompt.select("User:".magenta, User.tty_hash)
    password = prompt.mask('password:'.magenta, mask: "🌿")
    while password != user.password
      puts "Invalid password. Please try again.".blue
      password = prompt.mask('password: '.magenta, mask: "🌿")
    end
    clear
    heading("  PLANTMEDS ")
  end
  user
end

def program_menu
  prompt
  selection = prompt.select("Would you like to...".cyan, {
      "select from strains" => 1,
      "select from dispensaries" => 2,
      "view cart" => 3,
      "logout" => 4,
      "exit app" => 5})
#    binding.pry
end

def strains_page(user)
  prompt
  clear
  if Strain.all.count == 0
    heading("  PLANTMEDS ")
    puts "There are no strains available currently. Check our dispensaries page!".magenta
  else
    heading("   STRAINS  ")
    strain = prompt.select("Strains".cyan, Strain.class_hash, per_page: 20)
    strain.info
    boolean = prompt.select('Would you like this strain?'.cyan, {yes: true, no: false})
    if DispensaryInventory.where(strain_id: strain.id).count == 0
      puts "Sorry! #{strain.name} is currently unavailable.".red
      puts "\n"
    #  selection = program_menu
    elsif boolean == true
      dispensaries = strain.dispensaries
      selection = prompt.select('Available at:', strain.locations)
      CartItem.create(user_id: user.id, dispensary_inventory_id: selection.id)
      puts ""
      puts "#{selection.strain.name} from #{selection.dispensary.name} has been added to your cart!".magenta
      puts ""
    # else
    #   program_menu
    end
  end
  selection = program_menu
end

def dispensaries_page(user)
  if Dispensary.all.count == 0
    clear
    heading("  PLANTMEDS ")
    puts "There are no dispensaries currently".magenta
    prompt.select("For seeds", "click here")
    system "rake db:seed"
  else
    clear
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
      print "#{selection.strain.name} ".green
      print "from".magenta
      print " #{selection.dispensary.name} ".green
      puts "has been added to your cart!".magenta
      puts ""
    # else
    #   program_menu
    end
  end
  selection = program_menu
end

def view_cart(user)
  if Strain.all.count == 0 || user.cart.empty?
    clear
    heading("  YOUR CART ")
    puts "Your cart is empty.".red
    program_menu
  else
    clear
    heading("  YOUR CART ")
    user.cart_display
    cart_selection = prompt.select("Would you like to...".cyan, {
        "continue shopping" => 1, "checkout" => 2, "logout" => 3, "exit app" => 4})
    if cart_selection == 2
      user.empty_cart
      clear
      heading("  PLANTMEDS ")
      puts ""
      puts "Thank you for shopping with us!".magenta
      puts ""
      program_menu
    elsif cart_selection == 3
      clear
      heading("  PLANTMEDS ")
      user = login_page
      program_menu
    elsif cart_selection == 4
      clear
      exit
    else
      clear
      heading("  PLANTMEDS ")
      program_menu
    end
  end
end
