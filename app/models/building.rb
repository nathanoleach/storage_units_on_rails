class Building < ActiveRecord::Base

  has_many :storage_units
  
  default_scope { order('name ASC') }
  
end
