class Space < ActiveRecord::Base
  attr_accessible :address, :availability, :capacity, :city, :desc, :img_url, :name, :price, :suburb
end
