class CreateParkingSpots < ActiveRecord::Migration[5.0]
  def change
    create_table :parking_spots do |t|
      t.float :latitude
      t.float :longitude
      t.boolean :current_spot
      t.text :note

      t.timestamps
    end
  end
end
