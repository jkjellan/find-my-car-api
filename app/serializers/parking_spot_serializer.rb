class ParkingSpotSerializer < ActiveModel::Serializer
  attributes :id, :latitude, :longitude, :current_spot, :note
end
