class SupportedPointsController < ApplicationController
  before_action :set_supported_point, only: [:show, :edit, :update, :destroy]

  def index
    @supported_points = SupportedPoint.all
  end

  def show
  end

  def new
    @supported_point = SupportedPoint.new
  end

  def edit
  end

  def create
    @supported_point = SupportedPoint.new(supported_point_params)

  end

  def update

  end

  def destroy
    @supported_point.destroy
  end

  private
    def set_supported_point
      @supported_point = SupportedPoint.find(params[:id])
    end

    def supported_point_params
      params.require(:supported_point).permit(:user_id, :project_id, :point)
    end
end
