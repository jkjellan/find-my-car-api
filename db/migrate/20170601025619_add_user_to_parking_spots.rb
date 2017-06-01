class AddUserToParkingSpots < ActiveRecord::Migration[5.0]
  def change
    add_reference :parking_spots, :user, foreign_key: true
  end
end
