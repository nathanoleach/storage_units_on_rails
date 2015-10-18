class Contract < ActiveRecord::Base

  belongs_to :renter
  belongs_to :storage_unit
  
end
