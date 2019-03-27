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

  # def self.tty_choices(strain) #hash with name => instance
  #   choices = {}
  #   self.all.each do |dispensary|
  #     choices[dispensary.name] = DispensaryInventory.find_by(strain_id: strain.id)
  #   end
  #   choices
  # end

  def add_to_inventory(arr,price)
    arr.each do |strain|
      DispensaryInventory.create(dispensary_id: self.id, strain_id: strain.id)
    end
  end

  def inventory
    hash={}
     DispensaryInventory.all.select do |item|
      item.dispensary_id == self.id
    end.each do |item|
      hash[Strain.find(item.strain_id).name] = item
    end
    hash
  end

end
