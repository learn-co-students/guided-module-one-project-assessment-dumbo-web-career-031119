class User < ActiveRecord::Base
  has_many :dispensary_inventories
  has_many :strains, through: :dispensary_inventories

  def self.names
    all.map { |user| user.username}
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
