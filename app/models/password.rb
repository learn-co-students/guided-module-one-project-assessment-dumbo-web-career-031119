gem "bcrypt-ruby"
require "bcrypt"

# class Password < ActiveRecord::Base
#
#   belongs_to :user
#   # attr_accessor :password
#   # def initialize(password)
#   #   @password = password
#   # end
#   # def hash_pass
#   #   safe_pass = BCrypt::Password.create "password"
#   # end
# end
# BCrypt::Password.create("testing")



# hashed_password = BCrypt::Password.create "my password"
#
#
# hashed_password == "my password" # => true
#
# hashed_password1 = BCrypt::Password.create( "my password", cost: 1 )
# hashed_password10 = BCrypt::Password.create( "my password", cost: 10 )
#
#
# storable_string = hashed_password.to_s
# restored_hash = BCrypt::Password.new storable_string
