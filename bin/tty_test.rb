require_relative '../config/environment'
ActiveRecord::Base.logger = nil

prompt = TTY::Prompt.new
system "clear"

select = prompt.select("Would you like to...", %w(login signup))



if select == "signup"
  username = prompt.ask('username:')
  password = prompt.mask('password:')
  user = User.create(username: username, password: password)
else
  user = prompt.select("Users", User.names)
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
  #   prompt.ask("Added to cart!", {continue_shopping, all_good})
     #need a method to return hash of selected dispensaries with name as key and instance of DispensaryInventory as value
   end
  elsif select == 2
    dispensary = prompt.select("Dispensaries", Dispensary.class_hash)
    Dispensary.find_by(name: dispensary).info
  end
end

#p Strain.find_by(name: strain).name

#binding.pry
0
