class CreateStations < ActiveRecord::Migration[5.0]
  def change
    create_table :stations do |t|
      t.string :route_name
      t.string :station_name
      t.integer :walking_time

      t.timestamps
    end
  end
end
