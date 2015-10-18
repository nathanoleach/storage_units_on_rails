class Contract < ActiveRecord::Base

  belongs_to :renter
  belongs_to :storage_unit
  
  validate :available_storage_unit, on: :create
 
  def available_storage_unit
    su = StorageUnit.find_by(id: self.storage_unit_id)
    errors.add(:storage_unit_id, "is not available") unless su.available?
  end  
  
  def valid?
    if self.start_date <= Date.today and self.end_date >= Date.today
      return true
    else
      return false
    end
  end
  
end
