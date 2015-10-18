class StorageUnit < ActiveRecord::Base

  has_many :contracts
  belongs_to :building
  
  default_scope { order('building_id ASC, name ASC') }
  
  def self.available
    available = []
    self.all.each do |su|
      if su.available?
        available << su
      end
    end
    return available
  end
  
  def available?
    status = true
    self.contracts.each do |contract|
      if contract.valid?
        status = false
      end
    end
    return status
  end
  
end
