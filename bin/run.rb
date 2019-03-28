require_relative '../config/environment'
require_relative 'run_methods.rb'


ActiveRecord::Base.logger = nil
prompt
clear
#system "User.connection"

if !ActiveRecord::Base.connection.table_exists? 'users'
  choice = prompt.select("Deploy our program?", %w(Yea no))
  if choice == "no"
    puts "🥺🥺🥺🥺🥺🥺🥺🥺🥺🥺🥺"
    #clear
    exit
  end
end

puts "🚀🚀🚀🚀🚀🚀🚀🚀🚀🚀🚀🚀"
#    binding.pry

system "rake db:migrate"

if ActiveRecord::Base.connection.table_exists? 'users'
  clear
  heading("   Welcome! ")
  puts ""
  puts "PLANTMEDS"
  puts ""
  heading("  PLANTMEDS ")
  user = first_user
  selection = program_menu
else
  selection = 4
end

puts "🚀🚀🚀🚀🚀🚀🚀🚀🚀🚀🚀🚀"

clear

heading("   Welcome! ")
puts ""
puts "PLANTMEDS"
puts ""


#binding.pry

# if User.all.count > 0
#   user = login_page
#   selection = program_menu
#   clear
# else
#   heading("   Welcome! ")
#   puts ""
#   puts "PLANTMEDS"
#   puts ""
#   user = first_user
# end

while selection != 5
  case selection
  when 1
    selection = strains_page(user)
  when 2
    selection = dispensaries_page(user)
  when 3
    selection = view_cart(user)
  when 4
    clear
    heading("  PLANTMEDS ")
    user = login_page
    selection = program_menu
  end
#  exit
#  break selection == 5
end

clear
exit
