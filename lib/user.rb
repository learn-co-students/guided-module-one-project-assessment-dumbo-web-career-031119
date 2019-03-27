class User < ActiveRecord::Base
  has_many :dispensary_inventories
  has_many :strains, through: :dispensary_inventories
  has_many :cart_items

  attr_accessor :total

  def self.tty_hash
    hash = {}
    all.each { |user| hash[user.username] = user }
    hash
  end

  def cart
    CartItem.all.select do |item|
      self.id == item.user_id
    end
  end

  def sum_total
    self.reload
    self.total = self.cart_items.map { |cartItem| cartItem.price}.sum
#    self.total
  end

  # def add_item_to_cart(dispensary_inventory)
  #   newItem = CartItem.create(user_id: self.id, dispensary_inventory_id: dispensary_inventory.id)
  #   binding.pry
  #   self.total += newItem.price
  #   self.reload
  #   newItem
  # end

  def cart_display
   puts "Your cart:".magenta
   cart.each do |item|
     puts "⬡ 1/8 oz. #{item.dispensary_inventory.strain.name} @ #{item.dispensary_inventory.dispensary.name}, $#{item.format_pricing}".white
   end
   puts ""
   print " Your total is ".colorize(color: :blue, background: :cyan)
   puts "$#{format_price(self.sum_total)} ".colorize(color: :red, background: :cyan)
   puts "\n"
 end

 def empty_cart
     self.cart_items.each { |cartItem| cartItem.delete}
  end

end
