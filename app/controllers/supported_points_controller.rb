class SupportedPointsController < ApplicationController
  before_action :set_supported_point, only: [:show, :edit, :update, :destroy]

  # GET /supported_points
  # GET /supported_points.json
  def index
    @supported_points = SupportedPoint.all
  end

  # GET /supported_points/1
  # GET /supported_points/1.json
  def show
  end

  # GET /supported_points/new
  def new
    @supported_point = SupportedPoint.new
  end

  # GET /supported_points/1/edit
  def edit
  end

  # POST /supported_points
  # POST /supported_points.json
  def create
    @supported_point = SupportedPoint.new(supported_point_params)

    respond_to do |format|
      if @supported_point.save
        format.html { redirect_to @supported_point, notice: 'Supported point was successfully created.' }
        format.json { render :show, status: :created, location: @supported_point }
      else
        format.html { render :new }
        format.json { render json: @supported_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supported_points/1
  # PATCH/PUT /supported_points/1.json
  def update
    respond_to do |format|
      if @supported_point.update(supported_point_params)
        format.html { redirect_to @supported_point, notice: 'Supported point was successfully updated.' }
        format.json { render :show, status: :ok, location: @supported_point }
      else
        format.html { render :edit }
        format.json { render json: @supported_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supported_points/1
  # DELETE /supported_points/1.json
  def destroy
    @supported_point.destroy
    respond_to do |format|
      format.html { redirect_to supported_points_url, notice: 'Supported point was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supported_point
      @supported_point = SupportedPoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supported_point_params
      params.require(:supported_point).permit(:user_id, :project_id, :point)
    end
end
