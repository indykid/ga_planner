class Booking < ActiveRecord::Base
  attr_accessible :classroom_id, :course_id, :duration_hours, :end_date, :start_date, :time

  belongs_to :classroom
end
