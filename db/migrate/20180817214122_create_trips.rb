class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :destination
      t.string :trip_name
      t.string :start
      t.string :end

      t.timestamps
    end
  end
end
