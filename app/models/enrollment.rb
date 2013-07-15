class Enrollment < ActiveRecord::Base
  attr_accessible :confirmed, :course_id, :involvement, :user_id
end
