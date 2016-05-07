class RoomSearchesController < ApplicationController
  before_action :set_room_search, only: [:show, :edit, :update, :destroy]

  # GET /room_searches
  # GET /room_searches.json
  def index
    location = params[:location]
    no_of_peoples = params[:number]
    debugger
    @rooms = Room.where(area: location, vacancy: no_of_peoples)    
  end

  # GET /room_searches/1
  # GET /room_searches/1.json
  def show
    debugger
  end

  # GET /room_searches/new
  def new
    @room_search = RoomSearch.new
  end

  # GET /room_searches/1/edit
  def edit
  end

  # POST /room_searches
  # POST /room_searches.json
  def create
    @room_search = RoomSearch.new(room_search_params)

    respond_to do |format|
      if @room_search.save
        format.html { redirect_to @room_search, notice: 'Room search was successfully created.' }
        format.json { render :show, status: :created, location: @room_search }
      else
        format.html { render :new }
        format.json { render json: @room_search.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /room_searches/1
  # PATCH/PUT /room_searches/1.json
  def update
    respond_to do |format|
      if @room_search.update(room_search_params)
        format.html { redirect_to @room_search, notice: 'Room search was successfully updated.' }
        format.json { render :show, status: :ok, location: @room_search }
      else
        format.html { render :edit }
        format.json { render json: @room_search.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /room_searches/1
  # DELETE /room_searches/1.json
  def destroy
    @room_search.destroy
    respond_to do |format|
      format.html { redirect_to room_searches_url, notice: 'Room search was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room_search
      @room_search = RoomSearch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def room_search_params
      params.fetch(:room_search, {})
    end
end
