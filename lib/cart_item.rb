class CartItem < ActiveRecord::Base
  belongs_to :user
  belongs_to :dispensary_inventory

  def price
    self.dispensary_inventory.dispensary.pricing
    #return pricing from Dispensary instance
  end

  def format_price
    price2 = self.price
    if price2.to_s.split(".")[1].length == 1
      price2 = price2.to_s + "0"
    else
      price2 = price2.round(2).to_s
    end
    price2
  end

end
