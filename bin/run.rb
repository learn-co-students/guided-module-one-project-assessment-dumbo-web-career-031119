require_relative '../config/environment'
require_relative 'run_methods.rb'


ActiveRecord::Base.logger = nil

prompt
clear
#system "User.connection"

if !ActiveRecord::Base.connection.table_exists? 'users'
  choice = prompt.select("Deploy our program?", %w(Yea no))
  if choice == "Yea"
    puts "🚀🚀🚀🚀🚀🚀🚀🚀🚀🚀🚀🚀"
    clear
    puts "🚀🚀🚀🚀🚀🚀🚀🚀🚀🚀🚀🚀"
    # heading("   Welcome! ")
    # puts ""
    # puts "PLANTMEDS"
    # puts ""
    system "rake db:migrate"
    clear
    heading("  PLANTMEDS ")
    puts "🚀🚀🚀🚀🚀🚀🚀🚀🚀🚀🚀🚀"
    user = first_user
#    puts "🚀🚀🚀🚀🚀🚀🚀🚀🚀🚀🚀🚀"
    heading("  PLANTMEDS ")
    puts "🚀🚀🚀🚀🚀🚀🚀🚀🚀🚀🚀🚀"
    selection = program_menu
  elsif choice == "no"
    puts "🥺🥺🥺🥺🥺🥺🥺🥺🥺🥺🥺"
    #clear
    exit
  end
  clear
  heading("  PLANTMEDS ")
else
  heading("  PLANTMEDS ")
  user = login_page
  selection = program_menu
end

puts "🚀🚀🚀🚀🚀🚀🚀🚀🚀🚀🚀🚀"
#    binding.pry




puts "🚀🚀🚀🚀🚀🚀🚀🚀🚀🚀🚀🚀"

clear

heading("   Welcome! ")
puts ""
puts "PLANTMEDS"
puts ""
# if User.all.count > 0
#   selection = 4
# else
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
#  break selection == 5
end

clear
exit
