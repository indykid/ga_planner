class Enrollment < ActiveRecord::Base
  attr_accessible :confirmed, :course_id, :involvement, :user_id

  before_create :ensure_enrollment_has_involvement

 belongs_to :user
 belongs_to :course

 validates :user_id, uniqueness: {scope: :course_id, message: "you already enrolled onto this course"}

 def ensure_enrollment_has_involvement
 	self.involvement = 'student'
 end

end
