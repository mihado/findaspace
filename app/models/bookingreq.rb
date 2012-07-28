class Bookingreq < ActiveRecord::Base
  attr_accessible :email, :end_time, :space_id, :start_time, :username
  	validates	:email,
				:username,
  				:space_id,	:presence	=>	true

end
