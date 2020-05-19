class Admin::PlacesController < ApplicationController
  # 管理者以外のユーザーはトップページへ飛ばす
  before_action :if_not_admin

  def index
  	@place = Place.new
  	@places = Place.all
  end

  def create
  	@place = Place.new(place_params)
  	@place.save
  	redirect_to admin_places_path
  end

  def edit
  	@place = Place.find(params[:id])
  end

  def update
  	@place = Place.find(params[:id])
  	@place.update(place_params)
  	redirect_to admin_places_path
  end

  private
	def if_not_admin
		redirect_to root_path unless current_user.admin?
	end

	def place_params
		params.require(:place).permit(:name)
	end
end
