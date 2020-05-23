class Admin::TasksController < ApplicationController

  def create
  	@project = Project.find(params[:project_id])
  	@task = @project.tasks.new(task_params)
  	@task.project_id = @project.id
  	@task.save
  	redirect_to edit_admin_project_path(@project)
  end

  def edit
  	@task = Task.find(params[:id])
  end

  def update
  	@task = Task.find(params[:id])
  	@task.update(task_params)
  	redirect_to edit_admin_project_path(@task.project_id)
  end

  private

  	def task_params
		params.require(:task).permit(:project_id, :content, :progress_status)
	end
end
