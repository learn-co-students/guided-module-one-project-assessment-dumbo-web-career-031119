class Strain < ActiveRecord::Base
  has_many :dispensary_inventory
  has_many :dispensary, through: :dispensary_inventory

  def self.names
    all.map { |strain| strain.name }
  end
end
