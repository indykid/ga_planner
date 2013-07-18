class Booking < ActiveRecord::Base
  attr_accessible :classroom_id, :course_id, :b_date, :b_time

  validates :b_date, presence: true
  validates :b_time, presence: true
  validates :course_id, presence: true
  validates :classroom_id, presence: true

  belongs_to :classroom
  belongs_to :course

  def self.timeslots
    ['Morning', 'Afternoon', 'Evening', 'Day']
  end
  


end
