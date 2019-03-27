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
      puts "1/8 oz. #{item.dispensary_inventory.strain.name} @ #{item.dispensary_inventory.dispensary.name}, $#{item.price}".magenta
    end
    puts ""
    print " Your total is ".colorize(color: :blue, background: :cyan)
    puts "$#{self.total} ".colorize(color: :red, background: :cyan)
    puts "\n"
  end

  def buy_item_from_dispensary(dispensary_item)
    CartItem.create(self.id,dispensary_item.id)
  end

  def total
    self.cart_items.map { |cartItem| cartItem.price}.sum
  end

  def empty_cart
    self.cart_items.each { |cartItem| cartItem.delete}
  end

  def cart
  user_cart =  cart_item.all.select do |item|
      self.id == item.user_id
    end
    user_cart.each do |item|
      puts item
    end
  end

  def buy_item_from_dispensary(dispensary_item)
    CartItem.create(self.id,dispensary_item.id)
  end


end
