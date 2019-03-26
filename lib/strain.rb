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

  def self.class_hash #hash with name => instance
    choices = {}
    self.all.each do |instance|
      choices[instance.name] = instance
    end
    choices
  end

  def self.search_by_benefit(benefit)
    benefit = "%#{benefit}%"
    Strain.where('benefits LIKE ?',benefit).map do |strain|
      strain.name
    end
  end

end
