class ChangeBDateTypeToDate < ActiveRecord::Migration
  def change
    change_column :bookings, :b_date, :date
  end
end
