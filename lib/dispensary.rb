class Dispensary < ActiveRecord::Base
  has_many :dispensary_inventory
  has_many :strain, through: :dispensary_inventory
end
