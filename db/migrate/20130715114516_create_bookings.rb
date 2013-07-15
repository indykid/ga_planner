class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.time :time
      t.decimal :duration_hours
      t.integer :course_id
      t.integer :classroom_id

      t.timestamps
    end
  end
end
