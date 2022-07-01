class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.references :user, null: false, foreign_key: true
      t.string :start_point
      t.string :end_point
      t.datetime :departure_time
      t.integer :capacity

      t.timestamps
    end
  end
end
