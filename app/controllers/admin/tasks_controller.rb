class Admin::TasksController < ApplicationController

  def create
  	@project = Project.find(params[:project_id])
  	@task = @project.tasks.new(task_params)
  	@task.project_id = @project.id
  	@task.save
  	redirect_to edit_admin_project_path(@project)
  end

  def edit
  end

  private

  	def task_params
		params.require(:task).permit(:project_id, :content, :progress_status)
	end
end
