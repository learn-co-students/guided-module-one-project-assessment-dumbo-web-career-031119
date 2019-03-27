class CartItem < ActiveRecord::Base
  belongs_to :user
  belongs_to :dispensary_inventory

  def price
    self.dispensary_inventory.dispensary.pricing
    #return pricing from Dispensary instance
  end

end
