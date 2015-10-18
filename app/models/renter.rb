class Renter < ActiveRecord::Base

  has_many :contracts
  
  def full_name
    return self.first_name + " " + self.last_name
  end

end
