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

  def self.class_hash #hash with name => instance
    choices = {}
    self.all.each do |instance|
      choices[instance.name] = instance
    end
    choices
  end

  def self.tty_choices(strain) #hash with name => instance
    choices = {}
    self.all.each do |dispensary|
      choices[dispensary.name] = strain
    end
    choices
  end

  def add_to_inventory(arr)
    arr.each do |strain|
      DispensaryInventory.create(dispensary_id: self.id, strain_id: strain.id)
    end
  end

end
