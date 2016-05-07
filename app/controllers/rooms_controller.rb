class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :edit, :update, :destroy]

  # GET /rooms
  # GET /rooms.json
  def index
    @rooms = Room.all
    if(params.has_key?(:user_id)) then
      @rooms = Room.where(user_id: params[:user_id])
    else
      @rooms = Room.all
    end
  end

  # GET /rooms/1
  # GET /rooms/1.json
  def show
   
  end

  # GET /rooms/new
  def new
    @room = Room.new
    @room_rule = RoomRule.new
    @room_facility = RoomFacility.new
  end

  # GET /rooms/1/edit
  def edit
    @room = params[:id]
  end

  # POST /rooms
  # POST /rooms.json
  def create
    @room = Room.new(room_params)
    @room_facility = RoomRule.new(room_rules_params)
    @room_rule     = RoomFacility.new(room_facilities_params)
    #debugger
    respond_to do |format|
      if @room.save
          @room_rule.room_id = @room.id
          @room_facility.room_id = @room.id
          @room_rule.save
          @room_facility.save
        format.html { redirect_to @room, notice: 'Room was successfully created.' }
        format.json { render :show, status: :created, location: @room }
      else
        format.html { render :new }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rooms/1
  # PATCH/PUT /rooms/1.json
  def update
    respond_to do |format|
      if @room.update(room_params)
        format.html { redirect_to @room, notice: 'Room was successfully updated.' }
        format.json { render :show, status: :ok, location: @room }
      else
        format.html { render :edit }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rooms/1
  # DELETE /rooms/1.json
  def destroy
    @room.destroy
    respond_to do |format|
      format.html { redirect_to rooms_url, notice: 'Room was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room
      @room = Room.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def room_params
      params.permit(:name, :area, :room_type, :total_limit, :current_vacancy, :city, :gender_preference, :visibility, :total_rent, :expected_rent, :latitude, :longitude, :user_id)
    end

    def room_rules_params
      params.permit(:veg_only, :smoking_allowed, :alcohol_allowed)
    end

    def room_facilities_params
      params.permit(:tv, :wasing_machine, :ac, :basic_appliance, :two_wheeler_parking, :four_wheeler_parking)
    end
end
