class User < ActiveRecord::Base
  attr_accessible :age, :bio, :name, :photo, :role

has_many :enrollments
has_many :courses, through: :enrollments

before_save :ensure_user_has_role

def ensure_user_has_role
  self.role = "student"
end

end
