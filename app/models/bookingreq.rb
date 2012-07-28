class Bookingreq < ActiveRecord::Base
  attr_accessible :email, :end_time, :space_id, :start_time, :username
  belongs_to :space
  	validates	:email,
				:username,
  				:space_id,	:presence	=>	true

end
