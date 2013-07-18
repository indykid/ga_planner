class Course < ActiveRecord::Base
  attr_accessible :description, :price, :title, :start_date, :end_date

  has_many :enrollments
  has_many :users, through: :enrollments

  has_many :bookings
  has_many :classrooms, through: :bookings

end
