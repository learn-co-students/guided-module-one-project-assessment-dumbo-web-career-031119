class User < ActiveRecord::Base
  has_many :dispensary_inventories
  has_many :strains, through: :dispensary_inventories

  def self.names
    all.map { |user| user.username}
  end

end
