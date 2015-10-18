class Renter < ActiveRecord::Base

  has_many :contracts

  default_scope { order('last_name ASC, first_name ASC') }
  
  def full_name
    return self.first_name + " " + self.last_name
  end

end
