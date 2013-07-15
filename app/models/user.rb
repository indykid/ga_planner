class User < ActiveRecord::Base
  attr_accessible :age, :bio, :name, :photo, :role

has_many :enrollments
has_many :courses, through: :enrollments



end
