class User < ActiveRecord::Base
  has_many :dispensary_inventories
  has_many :strains, through: :dispensary_inventories
  has_many :cart_items

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

  def cart_display
    puts "Your cart:"
    cart.each do |item|
      puts "#{item.dispensary_inventory.strain.name} @ #{item.dispensary_inventory.dispensary.name}".magenta
    end
    puts "\n"
  end

  def buy_item_from_dispensary(dispensary_item)
    CartItem.create(self.id,dispensary_item.id)
  end

  def total
    self.cart_items.map { |cartItem| cartItem.price}.sum
  end


end
