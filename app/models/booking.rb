class Booking < ActiveRecord::Base
  attr_accessible :classroom_id, :course_id, :b_date

  belongs_to :classroom
  belongs_to :course


  


end
