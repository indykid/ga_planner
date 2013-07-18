class AddBTimeToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :b_time, :string
  end
end
