class CartItem < ActiveRecord::Base
  belongs_to :User
  belongs_to :DispensaryInventory
end
