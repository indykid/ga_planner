class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.text :bio
      t.string :photo
      t.string :role

      t.timestamps
    end
  end
end
