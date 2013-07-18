class RemoveDurationHoursFromBookings < ActiveRecord::Migration
  def up
    remove_column :bookings, :duration_hours
    add_column :bookings, :end_time, :time
  end

  def down
    add_column :bookings, :duration_hours
    remove_column :bookings, :end_time, :time
  end
end
