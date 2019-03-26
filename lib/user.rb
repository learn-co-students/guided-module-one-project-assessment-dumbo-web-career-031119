class User < ActiveRecord::Base
  has_many :dispensary_inventories
  has_many :strains, through: :dispensary_inventories

  def self.tty_hash
    hash = {}
    all.each { |user| hash[user.username] = user }
    hash
  end

  def cart
  user_cart =  CartItem.all.select do |item|
      self.id == item.user_id
    end
    user_cart
  end

  def buy_item_from_dispensary(dispensary_item)
    CartItem.create(self.id,dispensary_item.id)
  end


end
