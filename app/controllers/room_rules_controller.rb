class RoomRulesController < ApplicationController
  before_action :set_room_rule, only: [:show, :edit, :update, :destroy]

  # GET /room_rules
  # GET /room_rules.json
  def index
    @room_rules = RoomRule.all
  end

  # GET /room_rules/1
  # GET /room_rules/1.json
  def show
  end

  # GET /room_rules/new
  def new
    @room_rule = RoomRule.new
  end

  # GET /room_rules/1/edit
  def edit
  end

  # POST /room_rules
  # POST /room_rules.json
  def create
    @room_rule = RoomRule.new(room_rule_params)

    respond_to do |format|
      if @room_rule.save
        format.html { redirect_to @room_rule, notice: 'Room rule was successfully created.' }
        format.json { render :show, status: :created, location: @room_rule }
      else
        format.html { render :new }
        format.json { render json: @room_rule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /room_rules/1
  # PATCH/PUT /room_rules/1.json
  def update
    respond_to do |format|
      if @room_rule.update(room_rule_params)
        format.html { redirect_to @room_rule, notice: 'Room rule was successfully updated.' }
        format.json { render :show, status: :ok, location: @room_rule }
      else
        format.html { render :edit }
        format.json { render json: @room_rule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /room_rules/1
  # DELETE /room_rules/1.json
  def destroy
    @room_rule.destroy
    respond_to do |format|
      format.html { redirect_to room_rules_url, notice: 'Room rule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room_rule
      @room_rule = RoomRule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def room_rule_params
      params.require(:room_rule).permit(:veg_only, :smoking_allowed, :alcohol_allowed)
    end
end
