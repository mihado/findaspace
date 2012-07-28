class Space < ActiveRecord::Base
  attr_accessible :address, :availability, :capacity, :city, :desc, :img_url, :name, :price, :suburb
  def capacity_range
    @capacity_range
  end
  def capacity_range= new_range
    @capacity_range = new_range
  end
end
