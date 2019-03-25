class Strain < ActiveRecord::Base
  has_many :dispensary_inventories
  has_many :dispensaries, through: :dispensary_inventories

  def self.names
    all.map { |strain| strain.name } # => self.all.map
  end

  def info
    p self.name
    puts "Indica: #{self.indica}"
    puts "Sativa: #{self.sativa}"
    puts "THC: #{self.thc}"
    puts "CBD: #{self.cbd}"
    puts "Benefits: #{self.benefits}"
  end
end
