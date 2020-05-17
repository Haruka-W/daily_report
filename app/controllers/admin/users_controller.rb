class Admin::UsersController < ApplicationController
	# 管理者以外のユーザーはトップページへ飛ばす
	before_action :if_not_admin

	def index
  		@users = User.all
  	end

	private
		def if_not_admin
			redirect_to root_path unless current_user.admin?
		end
end
