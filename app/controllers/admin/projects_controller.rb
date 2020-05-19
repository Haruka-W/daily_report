class Admin::ProjectsController < ApplicationController
  # 管理者以外のユーザーはトップページへ飛ばす
  before_action :if_not_admin

  def index
  end

  def create
  end

  def edit
  end

  def updete
  end

  private
	def if_not_admin
		redirect_to root_path unless current_user.admin?
	end

	def project_params
		params.require(:project).permit(:place_id, :name, :status)
	end
end
