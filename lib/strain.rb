class Strain < ActiveRecord::Base
  has_many :dispensary_inventory
  has_many :dispensary, through: :dispensary_inventory
end
