require_relative '../config/environment'
require_relative 'run_methods.rb'


ActiveRecord::Base.logger = nil


system "rake db:migrate"

clear

heading("   Welcome! ")
puts ""
puts "PLANTMEDS"
puts ""

selection = nil

if User.all.count == 0
  user = first_user
else
  user = login_page
  selection = program_menu
  clear
end

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
  when 5
    exit
  else
    selection = program_menu
  end
end

clear
