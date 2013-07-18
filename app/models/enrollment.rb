class Enrollment < ActiveRecord::Base
  attr_accessible :confirmed, :course_id, :involvement, :user_id


 belongs_to :user
 belongs_to :course

 validates :user_id, uniqueness: {scope: :course_id, message: "you already enrolled onto this course"}

end
