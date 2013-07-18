class RemoveDateFieldsFromBooking < ActiveRecord::Migration
  def up
    remove_column :bookings, :end_time
    remove_column :bookings, :start_time
    remove_column :bookings, :end_date
    remove_column :bookings, :start_date
    add_column :bookings, :start, :datetime
    add_column :bookings, :end, :datetime

  end

  def down
  end
end
