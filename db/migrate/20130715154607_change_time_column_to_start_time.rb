class ChangeTimeColumnToStartTime < ActiveRecord::Migration
  def up
    remove_column :bookings, :time
    add_column :bookings, :start_time, :time
  end

  def down
    add_column :bookings, :time
    remove_column :bookings, :start_time, :time
  end
end
