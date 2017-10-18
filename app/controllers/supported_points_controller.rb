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

  def create
    if @supported_point = SupportedPoint.create(supported_point_params)
      redirect_to projects_path, notice: "支援が完了しました。"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @supported_point.update(supported_point_params)
      redirect_to projects_path, notice: "支援額を変更しました。"
    else
      render :edit
    end
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
