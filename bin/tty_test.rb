require_relative '../config/environment'

prompt = TTY::Prompt.new

select = prompt.select("Would you like to...", %w(login signup))



if select == "signup"
  username = prompt.ask('username:')
  password = prompt.mask('password:')
  user = User.create(username: username, password: password)
else
  user = prompt.select("Users", User.names)
end


strain = prompt.select("Strains", Strain.names)

p Strain.find_by(name: strain).name

#binding.pry
