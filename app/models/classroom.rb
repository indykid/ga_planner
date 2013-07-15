class Classroom < ActiveRecord::Base
  attr_accessible :c_name

  has_many :bookings
  has_one :course, through: :bookings

end
