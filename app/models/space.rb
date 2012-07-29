class Space < ActiveRecord::Base
  attr_accessible :address, :availability, :capacity, :city, :desc, :img_url, :name, :price, :suburb
  has_many :bookingreqs
  	validates 	:name,
  				:address,
				:suburb,
				:city,
				:desc,
				:capacity,
				:price,
				:img_url, :presence => true

	validates 	:price, :numericality => {:greater_than_or_equal_to => 0}
	validates	:capacity, :numericality => {:greater_than_or_equal_to => 1}

  def capacity_range
    @capacity_range
  end
  def capacity_range= new_range
    @capacity_range = new_range
  end
end
