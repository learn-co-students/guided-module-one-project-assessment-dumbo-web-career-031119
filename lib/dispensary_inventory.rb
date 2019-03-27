class DispensaryInventory < ActiveRecord::Base
  belongs_to :strain
  belongs_to :dispensary


end

#Dispensary.find_by id: (DispensaryInventory.find_by id: item.dispensary_inventory_id).pricing
