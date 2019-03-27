class CartItem < ActiveRecord::Base
  belongs_to :user
  belongs_to :dispensary_inventory

  def price
    self.dispensary_inventory.dispensary.pricing
    #return pricing from Dispensary instance
  end

  def format_pricing
    if price.to_s.split(".")[1].length == 1
      pricing = price.to_s + "0"
    else
      pricing = price.round(2).to_s
    end
    pricing
  end

end
