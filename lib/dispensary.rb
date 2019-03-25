class Dispensary < ActiveRecord::Base
  has_many :dispensary_inventories
  has_many :strains, through: :dispensary_inventories

  def self.names
    all.map { |dispensary| dispensary.name }
  end

  def self.infos
    all.map { |dispensary| "#{dispensary.name} @ #{dispensary.location}" }
  end

  def info
    puts self.name
    puts self.location
  end
end
