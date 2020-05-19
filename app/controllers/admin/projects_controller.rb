class Admin::ProjectsController < ApplicationController
  # 管理者以外のユーザーはトップページへ飛ばす
  before_action :if_not_admin

  def index
  	@project = Project.new
  	@projects = Project.all
  end

  def create
  	@project = Project.new(project_params)
  	@project.save
  	redirect_to admin_projects_path
  end

  def edit
  	@project = Project.find(params[:id])
  end

  def update
  	@project = Project.find(params[:id])
  	@project.update(project_params)
  	redirect_to admin_projects_path
  end

  private
	def if_not_admin
		redirect_to root_path unless current_user.admin?
	end

	def project_params
		params.require(:project).permit(:place_id, :name, :status)
	end
end
