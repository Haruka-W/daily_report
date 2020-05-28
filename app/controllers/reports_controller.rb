class ReportsController < ApplicationController
  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  private

  	def report_params
		params.require(:report).permit(:user_id, :work_date, :work_time)
	end
end
