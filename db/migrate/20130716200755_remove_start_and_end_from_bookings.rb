class RemoveStartAndEndFromBookings < ActiveRecord::Migration
  def up
    remove_column :bookings, :end
    remove_column :bookings, :start
    add_column :bookings, :b_date, :datetime
  end

  def down
  end
end
