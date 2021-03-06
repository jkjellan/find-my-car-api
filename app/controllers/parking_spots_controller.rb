class ParkingSpotsController < ProtectedController
  before_action :set_parking_spot, only: [:show, :update, :destroy]

  # GET /parking_spots
  def index
    # @parking_spots = ParkingSpot.all
    @parking_spots = current_user.parking_spots

    render json: @parking_spots
  end

  # GET /parking_spots/1
  def show
    render json: @parking_spot
  end

  # POST /parking_spots
  def create
    # @parking_spot = ParkingSpot.new(parking_spot_params)
    @parking_spot = current_user.parking_spots.build(parking_spot_params)

    if @parking_spot.save
      render json: @parking_spot, status: :created, location: @parking_spot
    else
      render json: @parking_spot.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /parking_spots/1
  def update
    if @parking_spot.update(parking_spot_params)
      render json: @parking_spot
    else
      render json: @parking_spot.errors, status: :unprocessable_entity
    end
  end

  # DELETE /parking_spots/1
  def destroy
    @parking_spot.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parking_spot
      @parking_spot = current_user.parking_spots.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def parking_spot_params
      params.require(:parking_spot).permit(:latitude, :longitude, :current_spot, :note)
    end
end
