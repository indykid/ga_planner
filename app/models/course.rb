class Course < ActiveRecord::Base
  attr_accessible :description, :price, :title

  has_many :enrollments
  has_many :users, through: :enrollments

  has_many :bookings
  has_many :classrooms, through: :bookings

end
