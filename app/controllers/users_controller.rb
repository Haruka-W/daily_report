class UsersController < ApplicationController
	# ログインしないと操作できない制限
	before_action :authenticate_user!
	# 変数のセッティング
	before_action :set_user, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  private

  	def user_params
    	params.require(:user).permit(:name, :email, :is_active, :admin)
  	end

  	def set_user
  		@user = User.find(params[:id])
  	end
end
