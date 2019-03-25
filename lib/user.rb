class User < ActiveRecord::Base
  has_many :dispensaryinventories
  has_many :strains, through: :dispensaryinventories

  def self.names
    all.map { |user| user.username}
  end

end
