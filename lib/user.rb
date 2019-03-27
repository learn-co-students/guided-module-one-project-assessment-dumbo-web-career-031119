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
    # if total.to_s.split(".")[1].length == 1
    #   total = total.to_s + "0"
    # else
    #   total = total.round(2).to_s
    # end
  
    puts "Your cart:"
    cart.each do |item|
      puts "1/8 oz. #{item.dispensary_inventory.strain.name} @ #{item.dispensary_inventory.dispensary.name}, $#{item.format_price}".magenta
    end
    puts ""
    print " Your total is ".colorize(color: :blue, background: :cyan)
    print "$"
    puts self.total #.colorize(color: :red, background: :cyan)
    puts "\n"
  end

  def buy_item_from_dispensary(dispensary_item)
    CartItem.create(self.id,dispensary_item.id)
  end

  def total
    totalz = self.cart_items.map { |cartItem| cartItem.price}.sum
    if totalz.to_s.split(".")[1].length == 1
      totalz = totalz.to_s + "0"
    else
      totalz = totalz.round(2).to_s
    end
  end

  def empty_cart
    self.cart_items.each { |cartItem| cartItem.delete}
  end



  def buy_item_from_dispensary(dispensary_item)
    CartItem.create(self.id,dispensary_item.id)
  end


end
