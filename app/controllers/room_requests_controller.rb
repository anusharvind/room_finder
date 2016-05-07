class RoomRequestsController < ApplicationController
  before_action :set_room_request, only: [:show, :edit, :update, :destroy]

  # GET /room_requests
  # GET /room_requests.json
  def index
    @room_requests = RoomRequest.all
  end

  # GET /room_requests/1
  # GET /room_requests/1.json
  def show
  end

  # GET /room_requests/new
  def new
    @room_request = RoomRequest.new
  end

  # GET /room_requests/1/edit
  def edit
  end

  # POST /room_requests
  # POST /room_requests.json
  def create
    @room_request = RoomRequest.new(room_request_params)

    respond_to do |format|
      if @room_request.save
        format.html { redirect_to @room_request, notice: 'Room request was successfully created.' }
        format.json { render :show, status: :created, location: @room_request }
      else
        format.html { render :new }
        format.json { render json: @room_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /room_requests/1
  # PATCH/PUT /room_requests/1.json
  def update
    respond_to do |format|
      if @room_request.update(room_request_params)
        format.html { redirect_to @room_request, notice: 'Room request was successfully updated.' }
        format.json { render :show, status: :ok, location: @room_request }
      else
        format.html { render :edit }
        format.json { render json: @room_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /room_requests/1
  # DELETE /room_requests/1.json
  def destroy
    @room_request.destroy
    respond_to do |format|
      format.html { redirect_to room_requests_url, notice: 'Room request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room_request
      @room_request = RoomRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def room_request_params
      params.require(:room_request).permit(:status, :no_of_peoples, :moved, :user_id, :room_id)
    end
end
