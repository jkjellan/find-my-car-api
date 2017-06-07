class ParkingSpotSerializer < ActiveModel::Serializer
  attributes :id, :latitude, :longitude, :current_spot, :note,
             :created_at, :updated_at
end
