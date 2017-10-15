class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def index

  end

  def show

  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'プロフィール情報が更新されました。'
    else
      render :edit
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :gender, :image)
  end
end
