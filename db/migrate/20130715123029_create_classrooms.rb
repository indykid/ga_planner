class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :c_name

      t.timestamps
    end
  end
end
