require 'rails_helper'

RSpec.describe "ParkingSpots", type: :request do
  describe "GET /parking_spots" do
    it "works! (now write some real specs)" do
      get parking_spots_path
      expect(response).to have_http_status(200)
    end
  end
end
