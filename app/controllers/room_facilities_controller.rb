class RoomFacilitiesController < ApplicationController
  before_action :set_room_facility, only: [:show, :edit, :update, :destroy]

  # GET /room_facilities
  # GET /room_facilities.json
  def index
    @room_facilities = RoomFacility.all
  end

  # GET /room_facilities/1
  # GET /room_facilities/1.json
  def show
  end

  # GET /room_facilities/new
  def new
    @room_facility = RoomFacility.new
  end

  # GET /room_facilities/1/edit
  def edit
  end

  # POST /room_facilities
  # POST /room_facilities.json
  def create
    @room_facility = RoomFacility.new(room_facility_params)

    respond_to do |format|
      if @room_facility.save
        format.html { redirect_to @room_facility, notice: 'Room facility was successfully created.' }
        format.json { render :show, status: :created, location: @room_facility }
      else
        format.html { render :new }
        format.json { render json: @room_facility.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /room_facilities/1
  # PATCH/PUT /room_facilities/1.json
  def update
    respond_to do |format|
      if @room_facility.update(room_facility_params)
        format.html { redirect_to @room_facility, notice: 'Room facility was successfully updated.' }
        format.json { render :show, status: :ok, location: @room_facility }
      else
        format.html { render :edit }
        format.json { render json: @room_facility.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /room_facilities/1
  # DELETE /room_facilities/1.json
  def destroy
    @room_facility.destroy
    respond_to do |format|
      format.html { redirect_to room_facilities_url, notice: 'Room facility was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room_facility
      @room_facility = RoomFacility.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def room_facility_params
      params.require(:room_facility).permit(:tv, :wasing_machine, :ac, :basic_appliance, :two_wheeler_parking, :four_wheeler_parking)
    end
end
