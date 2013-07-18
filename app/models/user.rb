class User < ActiveRecord::Base

has_secure_password
    


  attr_accessible :age, :bio, :name, :photo, :email, :password, :password_confirmation, :role

  #before_create :ensure_user_has_role


  #validates :email, presence: true, uniquness: true

has_many :enrollments
has_many :courses, through: :enrollments

# before_save :ensure_user_has_role

# def ensure_user_has_role
#   self.role = "student"
# end

def role?(role)
 self.role == role
end

def ensure_user_has_role
  self.role = "student"
end

end
